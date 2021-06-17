<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;


class FilmResimleri extends Model
{
    use HasFactory, SoftDeletes;

    protected $table    = 'film_resimleri';
    protected $fillable  = ['film_id', 'pozisyon', 'resim_yolu'];

}
