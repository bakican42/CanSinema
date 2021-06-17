@extends('layouts.app')
@section('content')
    <div class="container">
        <div class="album py-5">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-5 g-3">
                    @foreach($filmler as $film)
                        <div class="col">
                            <div class="card shadow-sm">
                                <img src="{{ $film->kapakfoto->resim_yolu  }}">
                                <div class="card-body">
                                    <h5 class="card-title">{{ $film->adi  }} - ({{ $film->ortalama }})</h5>
                                    <a href="{{ route('film.detay', $film->id)  }}" class="btn btn-sm btn-primary">Detaylar</a>
                                    <a href="{{ route('film.rezervasyon.create', $film->id)  }}" class="btn btn-sm btn-secondary">Rezervasyon</a>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
@endsection
