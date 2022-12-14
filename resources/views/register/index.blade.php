@extends('layouts.main')

@section('container')

<div class="row justify-content-center mt-5">
    <div class="col-md-6">
        <main class="form-registration w-100 m-auto bg-light shadow p-4 rounded">
            <h1 class="h3 mb-3 text-dark fw-normal text-center fw-bolder">Registration Form</h1>
            <form action="/register" method="post">
                @csrf
                <div class="form-floating">
                    <input type="text" name="name" class="form-control rounded-top @error('name') is-invalid @enderror" id="name" placeholder="full name" required value="{{ old('name') }}">
                    <label for="name">Full Name</label>
                    @error('name')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="text" name="username" class="form-control @error('username') is-invalid @enderror" id="username" placeholder="username" required value="{{ old('username') }}">
                    <label for="username">Username</label>
                    @error('username')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="email" name="email" class="form-control @error('email') is-invalid @enderror" id="email" placeholder="name@example.com" required value="{{ old('email') }}">
                    <label for="email">Email address</label>
                    @error('email')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <div class="form-floating">
                    <input type="password" name="password" class="form-control rounded-bottom @error('password') is-invalid @enderror" id="paddword" placeholder="Password" required>
                    <label for="paddword">Password</label>
                    @error('password')
                        <div class="invalid-feedback">{{ $message }}</div>
                    @enderror
                </div>
                <button class="w-100 btn btn-lg btn-success mt-3" type="submit">Register</button>
            </form>
            <small class="d-block text-center mt-3">Already Registered?<a href="/login"> Login</a></small>
        </main>
    </div>
</div>

@endsection