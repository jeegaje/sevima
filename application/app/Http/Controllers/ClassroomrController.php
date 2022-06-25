<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Classroom;
use App\Models\User;

class ClassroomrController extends Controller
{
  public function index($slug, $classroom){
    return view('classroom', [
      'title' => 'Classroom',
      'data' => User::firstWhere('slug', $slug),
      'classroom' => Classroom::firstWhere('name', $classroom),
    ]);
  }
}
