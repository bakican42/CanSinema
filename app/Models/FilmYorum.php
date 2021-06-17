<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class FilmYorum extends Model
{
    use HasFactory, SoftDeletes;

    protected $table   = 'film_yorumlari';
    protected $fillable = ['film_id', 'kullanici_id', 'yorum', 'aktif_mi'];
    protected $appends = ['aktif_text', 'aktif_class'];
    protected $dates   = ['created_at', 'updated_at'];

    public function getAktifTextAttribute()
    {
        switch ($this->attributes['aktif_mi'])
        {
            case 0:
                return 'Bekliyor';
                break;
            case 1:
                return 'Onaylandı';
                break;
            case 2:
                return 'Reddedildi';
                break;
        }
    }
    public function getAktifClassAttribute()
    {
        switch ($this->attributes['aktif_mi'])
        {
            case 0:
                return 'warning';
                break;
            case 1:
                return 'success';
                break;
            case 2:
                return 'danger';
                break;
        }
    }

    public function scopeBekleyenler($query)
    {
        return $query->where('aktif_mi', 0);
    }

    public function film()
    {
        return $this->hasOne(Film::class, 'id', 'film_id');
    }

    public function kullanici()
    {
        return $this->hasOne(User::class, 'id', 'kullanici_id')->withTrashed();
    }
}
