<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class FilmSeans extends Model
{
    use HasFactory;

    protected $table    = 'film_seanslari';
    protected $fillable  = ['seans_id', 'film_id'];

    public function seans()
    {
        return $this->hasOne(Seans::class, 'id', 'seans_id');
    }

    public function film()
    {
        return $this->hasOne(Film::class, 'id', 'film_id');
    }
}
