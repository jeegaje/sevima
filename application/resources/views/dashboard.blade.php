@extends('layouts.index')

@section('main')
  <h1>Welcome to Collapt</h1>
  @foreach ($data as $item)
  <h3>Nama Guru :: {{ $item->name }}</h3>
  @foreach ($item->classroom as $class)
  <p>Nama Kelas :: {{ $class->name }}</p>
  @endforeach
  @endforeach
@endsection
