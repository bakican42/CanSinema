<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Illuminate\Database\Eloquent\SoftDeletes;

class User extends Authenticatable
{
    use HasFactory, Notifiable, SoftDeletes;

    protected $fillable = [
        'rutbe',
        'ad',
        'soyad',
        'kullanici_adi',
        'cinsiyet',
        'tel_no',
        'dogum_tarihi',
        'email',
        'password',
    ];

    protected $hidden = [
        'password',
    ];

    protected $appends = ['is_admin'];

    protected $casts = [
    ];

    public function getIsAdminAttribute()
    {
        return $this->attributes['rutbe'] == 'admin';
    }

    public function getTamAdAttribute()
    {
        return $this->attributes['ad'] . ' ' . $this->attributes['soyad'];
    }

    public function scopeKullanicilar($query)
    {
        return $query->where('rutbe', 'kullanici');
    }

    public function scopeYoneticiler($query)
    {
        return $query->where('rutbe', 'admin');
    }
}
