@extends('layouts.main')

@section('container')
        <div class="row justify-content-center">
            @foreach ($outlets as $outlet)
            <div class="col-md-4 mb-3">
                <div class="card">
                    <img src="" class="card-img-top" alt="">
                    <div class="card-body">
                        <h5 class="card-title fs-6">{{ $outlet->name }}</h5>
                        <p>
                            <small class="text-muted">{{ $outlet->provinsi }}</small>
                        </p>
                        <p class="card-text">{{ $outlet->kecamatan_kelurahan . ", " . $outlet->kabupaten_kota  }}</p>
                        <a href="{{ $outlet->maps_loc }}" class="btn btn-success">Goto Maps</a>
                    </div>
                </div>
            </div>
            @endforeach
        </div>
@endsection
    
