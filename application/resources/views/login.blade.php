@extends('layouts.index')

@section('main')
<main class="form-signin w-100 m-auto container">
  <form action="/login" method="post">
    @csrf
    <h1 class="h3 mb-3 fw-normal text-center py-5">Masuk untuk <span class="fw-bold">Berkolaborasi</span> Bersama</h1>
    @if (session()->has('msg'))
    <p style="color:red;">{{ session('msg') }}</p>
    @endif
    <div class="form-floating">
      <input type="email" class="form-control" name="email" id="floatingInput" placeholder="name@example.com">
      <label for="floatingInput">Email</label>
      @error('email')
      <div class="" style="color:red;">
        {{ $message }}
      </div>
      @enderror
    </div>
    <div class="form-floating">
      <input type="password" class="form-control" name="password" id="floatingPassword" placeholder="Password">
      <label for="floatingPassword">Password</label>
      @error('password')
      <div class="" style="color:red;">
        {{ $message }}
      </div>
      @enderror
    </div>

<div class="">
  <p>Belum Punya Akun? <a href="/register">Ayo Buat Akun</a></p>
</div>
    <button class="w-100 btn btn-lg btn-primary" type="submit">Login</button>
  </form>
</main>
@endsection
