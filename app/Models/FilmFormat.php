<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilmFormat extends Model
{
    use HasFactory;

    protected $table = 'film_formatlari';
    protected $fillable = ['adi'];
}
