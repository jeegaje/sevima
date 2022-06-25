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
            <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">
            <form>
              <div class="mb-3">
                <label for="exampleInputEmail1" class="form-label">Email address</label>
                <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
                <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
              </div>
              <div class="mb-3">
                <label for="exampleInputPassword1" class="form-label">Password</label>
                <input type="password" class="form-control" id="exampleInputPassword1">
              </div>
              <div class="mb-3 form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Check me out</label>
              </div>
              <button type="submit" class="btn btn-primary">Submit</button>
            </form>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Understood</button>
          </div>
        </div>
      </div>
    </div>
  </main>

@endsection
