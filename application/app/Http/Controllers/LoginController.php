<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class LoginController extends Controller
{
    public function index(){
      return view('login');
    }

    public function store(Request $request){

      $data = $request -> validate([
        'email' => 'required',
        'password' => 'required'
      ]);

      $users = User::all();
      foreach ($users as $user) {
        if ($data['email']==$user['email'] && Hash::check($data['password'], $user['password'])) {
          return redirect()->intended("/dashboard/".$user['slug']);
        }
      }

      return back()->with('msg', 'Gagal Login');
    }
}
