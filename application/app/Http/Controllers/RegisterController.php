<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class RegisterController extends Controller
{
  public function index(){
    return view('register');
  }

  public function store(Request $request){
    $data = $request -> validate([
      'name' => 'required',
      'role' => 'required',
      'email' => 'required',
      'password' => 'required'
    ]);

    $data['slug'] = \Str::slug($data['name']);
    $data['password'] = bcrypt($data['password']);
    User::create($data);

    return view('login');
  }
}
