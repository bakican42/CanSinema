<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Avm extends Model
{
    use HasFactory;

    protected $table = 'avmler';
    protected $fillable = ['adi', 'il_id', 'aktif_mi'];


    public function il()
    {
        return $this->hasOne(Il::class, 'id', 'il_id');
    }
}
