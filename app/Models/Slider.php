<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;

class Slider extends Model
{
    use HasFactory, SoftDeletes;

    protected $table = 'slider';
    protected $fillable = ['film_id', 'resim_yolu', 'aktif_mi', 'sira'];


    public function film(){
        return $this->hasOne(Film::class, 'id', 'film_id');
    }
}
