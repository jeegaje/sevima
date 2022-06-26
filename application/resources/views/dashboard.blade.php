@extends('layouts.index')

@section('main')
  <main class="d-flex">
    @include('components.sidebar')
    <section class="m-5">
      <div class="d-flex justify-content-between align-items-center">
        <h1>Daftar Kelas</h1>
        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
          Tambah Kelas
        </button>
      </div>

      <div class="d-flex ">
        @foreach ($data->classroom as $class)
        <div class="card me-5 my-3" style="width: 18rem;">
          <div class="card-body">
            <h5 class="card-title">{{ $class->name }}</h5>
            <h6 class="card-subtitle mb-2 text-muted">{{ $class->school_year }}</h6>
            <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
            <a href="{{ $data->slug }}/{{ $class->name }}" class="btn btn-primary">Go somewhere</a>
          </div>
        </div>
        @endforeach
      </div>

      <h1>Postingan</h1>

    </section>
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="staticBackdropLabel">Tambah Kelas</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            }
            <form action="/addClassroom/{{ $data->id }}" method="post">
              @csrf
              <div class="mb-3">
                <label for="" class="form-label">Nama Kelas</label>
                <input type="text" class="form-control" id="" name="name">
              </div>
              <div class="mb-3">
                <label for="" class="form-label">Tahun Ajaran</label>
                <input type="text" class="form-control" id="" name="school_year">
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
        </div>
      </div>
    </div>
  </main>

@endsection
