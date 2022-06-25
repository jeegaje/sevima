@extends('layouts.index')

@section('main')
<main class="form-signin w-100 m-auto container">
  <form action="/register" method="post">
    @csrf
    <h1 class="h3 mb-3 fw-normal text-center py-5">Mari Mulai <span class="fw-bold">Berkolaborasi</span> Bersama</h1>

    <div class="form-floating mb-1">
      <input type="text" class="form-control" name="name" id="name" placeholder="Nama">
      <label for="name">Nama Lengkap</label>
      @error('name')
      <div class="" style="color:red;">
        {{ $message }}
      </div>
      @enderror
    </div>
    <div class="form-floating mb-1">
      <input type="email" class="form-control" name="email" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Email address</label>
      @error('email')
      <div class="" style="color:red;">
        {{ $message }}
      </div>
      @enderror
    </div>
    <select class="form-select mb-1" name="role" aria-label="Default select example">
      <option value="teacher">Pengajar</option>
      <option value="parent">Orang Tua</option>
    </select>
    @error('role')
    <div class="" style="color:red;">
      {{ $message }}
    </div>
    @enderror
    <div class="form-floating mb-1">
      <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
      @error('password')
      <div class="" style="color:red;">
        {{ $message }}
      </div>
      @enderror
    </div>
    <div class="form-floating mb-1">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Konfirmasi Password</label>
      @error('password')
      <div class="" style="color:red;">
        {{ $message }}
      </div>
      @enderror
    </div>
      <div class="">
        <p>Sudah Punya Akun? <a href="/login">Ayo Login</a></p>
      </div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">Register</button>
  </form>
</main>
@endsection
