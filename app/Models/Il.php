<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Il extends Model
{
    use HasFactory;

    protected $table = 'iller';
    protected $fillable = ['ad'];
}
