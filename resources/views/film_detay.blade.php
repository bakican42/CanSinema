@extends('layouts.app')
<style>
.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
}
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    content: '★ ';
}
.rate > input:checked ~ label {
    color: #ffc700;
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}
</style>
@section('content')
    @php
        $yorumlar = $film->yorum;
    @endphp
    <div class="container">
        <div class="container film-detail">
            <div class="alert alert-success ajax_success" role="alert" style="display: none">
                <h4 class="alert-heading">Herşey Mükemmel!</h4>
                <label>Puanınız sistemimize eklendi!</label>
            </div>

            <div class="alert alert-primary ajax_login" role="alert" style="display: none">
                <h4 class="alert-heading">Hata!</h4>
                <label>Lütfen giriş yapınız!</label>
            </div>

            <div class="alert alert-danger ajax_error" role="alert" style="display: none">
                <h4 class="alert-heading">Hata!</h4>
                <label>Beklenmedik hata oluştu!</label>
            </div>
            <div class="row">
                <div class="col-3">
                    <img src="{{ $film->kapakfoto->resim_yolu  }}" width="100%" height="450">
                </div>
                <div class="col-9">
                    <h3>{{ $film->adi  }}</h3>
                    <p>Vizyon Tarihi: {{ $film->vizyon_tarihi_format }}</p>
                    <p>Süre : {{ $film->sure }}</p>
                    <p>Tür : <strong>{{ $film->kategori->adi }}</strong></p>
                    <br>
                    <p><strong>Özet: </strong>{!! $film->aciklama !!}</p>
                    <p><strong>Puan Ortalaması: {{ $ortalama }}</strong></p>
                    <p><strong>Puanla:</strong></p>
                    @php
                        if(!\Auth::guest()){
                            $puan = $film->puan->where('kullanici_id', auth()->user()->id)->first();
                        }
                    @endphp
                    <div class="rate">
                        <input type="radio" id="star5" name="rate" value="5" {{ (isset($puan) && $puan->puan == 5) ? 'checked' : '' }} />
                        <label for="star5" title="text">5 stars</label>
                        <input type="radio" id="star4" name="rate" value="4" {{ (isset($puan) && $puan->puan == 4) ? 'checked' : '' }} />
                        <label for="star4" title="text">4 stars</label>
                        <input type="radio" id="star3" name="rate" value="3" {{ (isset($puan) && $puan->puan == 3) ? 'checked' : '' }} />
                        <label for="star3" title="text">3 stars</label>
                        <input type="radio" id="star2" name="rate" value="2" {{ (isset($puan) && $puan->puan == 2) ? 'checked' : '' }} />
                        <label for="star2" title="text">2 stars</label>
                        <input type="radio" id="star1" name="rate" value="1" {{ (isset($puan) && $puan->puan == 1) ? 'checked' : '' }} />
                        <label for="star1" title="text">1 star</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="container mt-5 mb-5">
            <iframe width="100%" height="615" src="{{ $film->fragman_url  }}" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <br><br>
            <div class="d-flex justify-content-center row">
                <div class="d-flex flex-column col-md-12">
                    <div class="coment-bottom bg-white p-2 px-4">
                        <div class="d-flex flex-column ml-3">
                            <div class="d-flex flex-row post-title">
                                <h5>Toplam Yorum</h5><span class="ml-2">({{ $yorumlar->count()  }})</span>
                            </div>
                        </div>
                        <form action="{{ route('film.yorum_ekle', $film->id)  }}" class="form-control" method="POST">
                            @csrf
                            <div class="d-flex flex-row add-comment-section mt-4 mb-4">
                                <input type="text" name="yorum" class="form-control" placeholder="Yorumunuzu giriniz">
                                <button class="btn btn-primary" type="submit">Yorumu Ekle</button>
                            </div>
                        </form>
                        @if(session('mesaj'))
                            <div class="alert alert-success alert-dismissible" style="margin-top:10px;">
                                <h5><i class="icon fas fa-check"></i> Başarılı!</h5>
                                {{ session('mesaj') }}
                            </div>
                        @endif
                        @foreach($yorumlar->sortByDesc('id') as $yorum)
                            <div class="commented-section mt-2">
                                <div class="d-flex flex-row align-items-center commented-user">
                                    <h5 class="me-2">{{ $yorum->kullanici->kullanici_adi }}</h5>
                                    <span class="mb-1 mx-3">{{ $yorum->created_at->diffForHumans()  }}</span>
                                </div>
                                <div class="comment-text-sm">
                                    <span>
                                        {{ $yorum->yorum  }}
                                    </span>
                                </div>
                            </div>
                            <hr>
                        @endforeach
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection

@section('scripts')

    <script>

        $('.rate input[name="rate"]').change(function(obj){

            var CSRF_TOKEN = "{{ csrf_token()  }}";
            myObj = {
                '_token': CSRF_TOKEN,
                'puan': $(this).val(),
            };

            $.ajax({
                url: "{{ route('film.puanla', $film->id) }}",
                type: 'POST',
                data: myObj,
                dataType: 'JSON',
                success: function (data) {
                    $('.ajax_success').show();
                    setTimeout(function(){
                        location.reload();
                    }, 1000 * 3)
                },
                error: function(data, data1, data2){

                    if(data.status == 401){
                        $('.ajax_login').show();
                    }else{
                        $('.ajax_error').show();
                    }


                }
            });


        })

    </script>
@endsection
