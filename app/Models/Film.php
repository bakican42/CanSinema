<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Carbon\Carbon;

class Film extends Model
{
    use HasFactory;

    protected $table    = 'filmler';
    protected $fillable = ['kategori_id', 'format_id', 'salon_id', 'dil_id', 'adi', 'yonetmen',
                         'oyuncular', 'sure', 'aciklama', 'vizyon_tarihi', 'bilet_ucreti', 'fragman_url'];
    protected $appends  = ['aciklama_kisa'];
    protected $dates    = ['vizyon_tarihi', 'created_at', 'updated_at'];


    public function getVizyonTarihiFormatAttribute()
    {
        $date = Carbon::parse($this->attributes['vizyon_tarihi']);

        return $date->format('d.m.Y');
    }

    public function setVizyonTarihiAttribute($vizyon_tarihi)
    {
        $date = Carbon::parse($vizyon_tarihi);

        $this->attributes['vizyon_tarihi'] = $date->format('Y-m-d H:i:s');
    }

    public function getAciklamaKisaAttribute()
    {
        return strip_tags(substr($this->aciklama, 0, 50) . '...');
    }

    public function yorum()
    {
        return $this->hasMany(FilmYorum::class, 'film_id')->where('aktif_mi', 1);
    }

    public function puan()
    {
        return $this->hasMany(FilmPuan::class, 'film_id');
    }

    public function kategori()
    {
        return $this->hasOne(Kategori::class, 'id', 'kategori_id');
    }

    public function format()
    {
        return $this->hasOne(FilmFormat::class, 'id', 'format_id');
    }

    public function dil()
    {
        return $this->hasOne(FilmDil::class, 'id', 'dil_id');
    }

    public function salon()
    {
        return $this->hasOne(Salon::class, 'id', 'salon_id');
    }

    public function seans()
    {
        return $this->hasMany(FilmSeans::class, 'film_id');
    }

    public function kapakfoto()
    {
        return $this->hasOne(FilmResimleri::class, 'film_id')->where('pozisyon', 'kapak');
    }

    public function galeri()
    {
        return $this->hasMany(FilmResimleri::class, 'film_id')->where('pozisyon', 'galeri');
    }

    public function fotograflar()
    {
        return $this->hasMany(FilmResimleri::class, 'film_id');
    }

    public function rezervasyon()
    {
        return $this->hasMany(FilmRezervasyonlari::class, 'film_id');
    }
}
