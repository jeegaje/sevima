<?php

namespace App\Models;

use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

use Illuminate\Database\Eloquent\Model;
use App\Models\Classroom;

class User extends Model
{
    use HasFactory;

    protected $guarded=['id'];
    public function classroom(){
      return $this->hasMany(Classroom::class);
    }
}
