@extends('layouts.main')

@section('container')

<div class="row justify-content-center mt-5">
    <div class="col-md-6">
      
      <main class="form-signin w-100 m-auto bg-light shadow p-5 rounded">
        <h1 class="h3 mb-3 text-dark fw-normal text-center fw-bolder">Please Login</h1>
        @if (session()->has('success'))    
          <div class="alert alert-success alert-dismissible fade show" role="alert">
            {{ session('success') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
        @endif

        @if (session()->has('loginError'))    
          <div class="alert alert-danger alert-dismissible fade show" role="alert">
            {{ session('loginError') }}
            <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
          </div>
        @endif
        <form action="/login" method="post">
          @csrf
          <div class="form-floating">
            <input type="text" name="username" class="form-control @error('username') is_invalid @enderror" id="username" placeholder="username" autofocus required value="{{ old('username') }}">
            <label for="username">Username</label>
            @error('username')
                <div class="invalid_feedback">
                  {{ $message }}
                </div>
            @enderror
          </div>
          <div class="form-floating">
            <input type="password" name="password" class="form-control" id="password" placeholder="Password" required>
            <label for="password">Password</label>
          </div>
          <button class="w-100 btn btn-lg btn-success" type="submit">Login</button>
        </form>
        <small class="d-block text-center mt-3">Not Registered?<a href="/register"> Register Now!</a></small>
      </main>
    </div>
</div>

@endsection