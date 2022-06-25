@extends('layouts.index')

@section('main')
  <main class="d-flex">
    @include('components.sidebar')
    <section class="m-5">
      <p class="fs-5 fw-light my-0">Nama Kelas</p>
      <h1 class="fw-bold">{{ $classroom->name }}</h1>
      <h1>Daftar Pelajaran</h1>
      @if ($classroom->lesson != "[]")
        <div class="list-group">
          @foreach ($classroom->lesson as $lesson)
          <a href="#" class="list-group-item list-group-item-action">{{ $lesson -> name }}</a>
          @endforeach
        </div>
      @else
        <p>Pelajaran Masih Kosong</p>
      @endif

      <h1>Postingan</h1>

    </section>
  </main>

@endsection
