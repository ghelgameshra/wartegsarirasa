@extends('layouts.main')


@section('container')

    @foreach ($posts as $post)
    <article class="mb-4 border-bottom">
        <h2><a href="/posts/{{ $post->slug }}" class="text-decoration-none">{{ $post->title }}</a></h2>


        <p>By. <a href="/authors/{{ $post->user->id }}" class="text-decoration-none">{{ $post->user->name }}</a> in <a href="/categories/{{ $post->category->slug }}" class="text-decoration-none">{{ $post->category->name }}</a></p>

        <p>{{ $post->excerpt }}<a href="/posts/{{ $post->slug }}" class="text-decoration-none"> Read more</a></p>
        
    </article>
    @endforeach

@endsection
    
