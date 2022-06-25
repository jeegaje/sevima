<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Classroom;

class User extends Model
{
    use HasFactory;

    public function classroom(){
      return $this->hasMany(Classroom::class);
    }
}
