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

  public function addClassroom(Request $request, $user_id){
    $data = $request -> validate([
      'name' => 'required',
      'school_year' => 'required'
    ]);

    Classroom::create([
      'name' => $data['name'],
      'user_id' => $user_id,
      'school_year'=> $data['school_year']
    ]);

    return back();
  }
}
