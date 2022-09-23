@extends('layouts.main')

@section('container')
        <div class="justify-content-center">

        <div class="accordion" id="accordionExample">
            <div class="accordion-item">
                <h2 class="accordion-header" id="headingTwo">
                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                    Outlets Location
                </button>
                </h2>
                <div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
                <div class="accordion-body">
                    <div class="row">
                        @foreach ($outlets as $outlet)
                        <div class="col-md-4 mb-3">
                            <div class="card shadow border-none">
                                <img src="" class="card-img-top" alt="">
                                <div class="card-body text-center">
                                    <i class="bi bi-shop fs-1"></i>
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
                </div>
                </div>
            </div>
        </div>

        </div>
@endsection
    
