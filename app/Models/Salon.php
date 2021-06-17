<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Salon extends Model
{
    use HasFactory;

    protected $table = 'salonlar';
    protected $fillable = ['adi', 'avm_id', 'aktif_mi', 'kapasite'];


    public function avm()
    {
        return $this->hasOne(Avm::class, 'id', 'avm_id');
    }
}
