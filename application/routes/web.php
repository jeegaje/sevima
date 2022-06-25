<?php

use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Http\Controllers\UserController;
use App\Http\Controllers\ClassroomrController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/dashboard', function () {
    return view('dashboard', [
      'title' => 'Dashboard',
      'data' => User::all()
    ]);
});

Route::get('/dashboard/{slug}', [UserController::class, 'index']);
Route::get('/dashboard/{slug}/{classroom}', [ClassroomrController::class, 'index']);

Route::get('/login', function () {
    return view('login');
});
