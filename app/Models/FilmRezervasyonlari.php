<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilmRezervasyonlari extends Model
{
    use HasFactory;

    protected $table    = 'film_rezervasyonlari';
    protected $fillable  = ['film_id', 'koltuk_adi', 'bos_mu', 'kullanici_id'];
}
