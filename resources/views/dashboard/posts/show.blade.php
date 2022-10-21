@extends('dashboard.layouts.main')

@section('container')
<div class="container">
    <div class="row justify-content-left my-4">
        <div class="col-md-9">
            <h1 class="fw-bold">{{ $post->title }}</h1>
            
            <a href="/dashboard/posts" class="btn btn-success"><span data-feather="arrow-left"></span> Back to my posts</a>
            <a href="" class="btn btn-warning"><span data-feather="edit"></span> Edit</a>
            <a href="" class="btn btn-danger"><span data-feather="trash-2"></span> Delete</a>


            <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid mt-3">
            <article class="my-3 text-justify">
                {{-- tanpa escape --}}
                {!! $post->body !!}
            </article>
        
            <a href="/posts" class="display-block mt-5">Back to blog</a>
        </div>
        <div class="col-md-3">
            
        </div>
    </div>
</div>
@endsection