@extends('layouts.main')
<style>
    .col-md-2 .about-us{
        border-color: #8FC04E;
        color: #8FC04E;
    }

</style>
<div class="card text-bg-dark">
    <img src="/img/background-img.jpg" class="border-none" alt="...">

    

    <div class="d-flex flex-column justify-content-center card-img-overlay text-center">
        <h5 class="card-title fs-1 fw-bold">WARTEG SARIRASA</h5>
        <p class="card-text fs-7 fw-light fst-italic">"Makan enak, murah, dijamin puas"</p>

        <div class="row justify-content-center">
            <div class="col-md-2 d-grid">
                <a href="/about" class="btn btn-outline-success w-full rounded-pill fw-bold about-us">About Us</a>
            </div>
        </div>
    </div>
</div>

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
                    <div class="row justify-content-center">
                        @foreach ($outlets as $outlet)
                        <div class="col-md-4 mb-3">
                            <div class="card shadow border-none" style="height: 300px">
                                <div class="p-2 text-center mt-3">
                                    <a href="{{ $outlet->maps_loc }}">
                                        <i class="bi bi-shop fs-1" style="color: rgb(143,192,78);"></i>
                                    </a>
                                </div>
                                <div class="card-body text-center">
                                    <h5 class="card-title fs-6">{{ $outlet->name }}</h5>
                                    <p>
                                        <small class="text-muted">{{ $outlet->provinsi }}</small>
                                    </p>
                                    <p class="card-text">{{ $outlet->kecamatan_kelurahan . ", " . $outlet->kabupaten_kota  }}</p>
                                    <a href="{{ $outlet->maps_loc }}" class="btn fw-bold text-white" style="background: rgb(143,192,78);" onmouseout="this.style.backgroundColor='#8FC04E'" onmouseover="this.style.backgroundColor='#709939'">Goto Maps</a>
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
    
