@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row">
            <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel" style="min-height: 500px;">
                <div class="carousel-inner">
                    @foreach($sliders->sortBy('sira') as $slider)
                        <div class="carousel-item">
                            <a href="{{ route('film.detay', $slider->film_id)  }}" target="_blank">
                                <img src="{{ $slider->resim_yolu }}" height="500" class="active d-block w-100">
                            </a>
                            <div class="carousel-caption d-none d-md-block">
                                <h5>{{ $slider->film->adi  }}</h5>
                                <p>{{ $slider->film->aciklama_kisa }}</p>
                            </div>
                        </div>
                    @endforeach
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Önceki</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Sonraki</span>
                </button>
            </div>
        </div>
    </div>
    <div class="album py-5">
        <div class="container">
            <div class="row row-cols-1 row-cols-sm-2 row-cols-md-5 g-3">
                @foreach($filmler as $film)
                    <div class="col">
                        <div class="card shadow-sm">
                            <img src="{{ @$film->kapakfoto->resim_yolu  }}">

                            <div class="card-body">
                                <h5 class="card-title">{{ $film->adi  }}</h5>
                                <a href="{{ route('film.detay', $film->id)  }}" class="btn btn-sm btn-primary">Detaylar</a>
                                <a href="{{ route('film.rezervasyon.create', $film->id)  }}" class="btn btn-sm btn-secondary">Rezervasyon</a>
                            </div>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endsection

@section('scripts')
    <script>
        $(document).ready(function(){
            $('.carousel-item').eq(0).addClass('active');
            $('.carousel').carousel({
                interval: 2000
            });
        });
    </script>
@endsection
