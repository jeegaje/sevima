<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class UserController extends Controller
{
    public function index($slug){
      return view('dashboard', [
        'title' => 'Dashboard',
        'data' => User::firstWhere('slug', $slug)
      ]);
    }
}
