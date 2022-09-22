@extends('layouts.main')

@section('container')
    <div class="container">
        <div class="row justify-content-left mb-5">
            <div class="col-md-9">
                <h1 class="fw-bold">{{ $post->title }}</h1>
                <p class="fst-italic">By. <a href="/posts?author={{ $post->author->username }}" class="text-decoration-none">{{ $post->author->name }}</a> in <a href="/posts?category={{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>
                <img src="https://source.unsplash.com/1200x400?{{ $post->category->name }}" alt="{{ $post->category->name }}" class="img-fluid">
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