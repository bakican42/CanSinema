<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilmPuan extends Model
{
    use HasFactory;

    protected $table   = 'film_puanlari';
    protected $fillable = ['film_id', 'kullanici_id', 'puan'];

}
