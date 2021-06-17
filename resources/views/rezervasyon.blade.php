@extends('layouts.app')
<style>
    .seat {
        background-color: #2e2e2e;
        height: 25px !important;
        width: 60px !important;
        margin: 3px;
        border-radius: 50px;
        color:#FFFFFF;
        text-align: center;
    }

    .seat.selected {
        background-color: darkgreen;
    }

    .seat.occupied {
        background-color: #f9a825;
    }

    .seat.koltuk_sira_no {
        background-color: #084298;
    }

    .seat:nth-of-type(2) {
        margin-right: 18px;
    }

    .seat:nth-last-of-type(2) {
        margin-left: 18px;
    }

    .seat:not(.occupied):hover {
        cursor: pointer;
        transform: scale(1.2);
    }

    .showcase .seat:not(.occupied):hover {
        cursor: default;
        transform: scale(1);
    }

    .showcase {
        background: rgba(0, 0, 0, 0.3);
        padding: 5px 10px;
        border-radius: 5px;
        list-style: none;
        display: flex;
        justify-content: space-between;
    }

    .showcase li {
        display: flex;
        align-items: center;
        justify-content: center;
        margin: 0 10px;
    }

    .showcase li small {
        margin-left: 2px;
    }

    .row {
        display: flex;
    }

    .screen {
        background-color: #7c7979;
        height: 70px;
        width: 100%;
        margin: 15px 0;
        transform: rotateX(-45deg);
        box-shadow: 0 3px 10px rgba(255, 255, 255, 0.7);
        text-align: center;
        padding-top: 2%;
        color:#FFF;
    }

    p {
        background: rgba(0, 0, 0, 0.3);
        padding: 5px 10px;
        border-radius: 5px;
    }

    p.text {
        margin: 5px 0;
    }

    p.text span {
        color: #b50c0c;
    }
</style>
@section('content')
    <div class="container">
        <div class="alert alert-success ajax_success" role="alert" style="display: none">
            <h4 class="alert-heading">Herşey Mükemmel!</h4>
            <label>Rezervasyon işleminiz tamamlandı!</label>
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
            <label>Film Adı: <strong>{{ $film->adi  }}</strong></label>
            <label>Salon Adı: <strong>{{ $film->salon->adi  }}</strong></label>
            <label>AVM Adı: <strong>{{ $film->salon->avm->adi }}</strong></label>
        </div>
        @if(!empty($film->fragman_url))
            <iframe width="100%" height="300" src="{{ $film->fragman_url  }}" title="{{ $film->adi }}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        @endif

        <ul class="showcase">
            <li>
                <div class="seat"></div>
                <small>Müsait</small>
            </li>
            <li>
                <div class="seat selected"></div>
                <small>Seçilmiş</small>
            </li>
            <li>
                <div class="seat occupied"></div>
                <small>Rezerve Edilmiş</small>
            </li>
        </ul>

        @php
            $kapasite    = $film->salon->kapasite;
            $toplamSatir = (int) ceil($kapasite / 10);
            $rezervasyonlar = $film->rezervasyon;
            $alfabe = array( 'a', 'b', 'c', 'd', 'e',
                       'f', 'g', 'h', 'i', 'j',
                       'k', 'l', 'm', 'n', 'o',
                       'p', 'q', 'r', 's', 't',
                       'u', 'v', 'w', 'x', 'y',
                       'z'
                       );
        @endphp

        <div class="container continer_xt">
            <div class="screen">Sinema Perdesi</div>
            @for($s=0; $s < $toplamSatir; $s++)
                <div class="row">
                <div class="seat koltuk_sira_no" id="{{ ucfirst($alfabe[$s])  }}">{{ ucfirst($alfabe[$s])  }}</div>
                @for($i=1; $i<=10; $i++)
                        @if($kapasite >= 1)
                            @php
                                if($s > 0){
                                    $slug = "K-{$s}{$i}";
                                }else{
                                    $slug = "K-{$i}";
                                }
                                $hasRezervasyon = $rezervasyonlar->where('koltuk_adi', $slug)->first();
                            @endphp

                            <div class="seat {{ (!is_null($hasRezervasyon) && $hasRezervasyon->bos_mu == 1) ? 'occupied': '' }}" id="{{$slug}}" data-id="{{ $hasRezervasyon->id ?? '-' }}">K-{{$i}}</div>
                        @else
                            <div class="seat" style="display: none">K-{{$i}}</div>
                        @endif
                        @php $kapasite--; @endphp
                    @endfor
                </div>
            @endfor
        </div>

        <p class="text">Seçilen koltuk adetiniz <span id="count">0</span> için ödemeniz gereken tutar <span id="total">0</span>₺</p>
        <p class="text text-bold">Tek Bilet Fiyatı: {{ $film->bilet_ucreti  }}₺</p>
        @if(!empty($film->seans))
            <select name="seans_id" class="form-control" style="margin :10px 0px;">
                <option value="">Seans Seçiniz</option>
                @foreach($film->seans as $seans)
                <option value="{{ $seans->id }}">{{ $seans->seans->adi }}</option>
                @endforeach
            </select>
        @endif
        <button class="btn btn-primary" id="rezerve_et">Rezervasyon Yap</button>
    </div>
    <div id="movie" style="display: none;">{{ $film->bilet_ucreti }}</div>
@endsection

@section('scripts')
    <script>
        const rezerveButton = document.getElementById('rezerve_et');
        const container = document.querySelector('.continer_xt');
        const seats = document.querySelectorAll('.row .seat:not(.occupied)');
        const count = document.getElementById('count');
        const total = document.getElementById('total');
        const movieSelect = document.getElementById('movie');


        let ticketPrice = +movieSelect.textContent;

        // Save selected movie index and price
        function setMovieData(movieIndex, moviePrice) {
            localStorage.setItem('selectedMovieIndex', movieIndex);
            localStorage.setItem('selectedMoviePrice', moviePrice);
        }

        // Update total and count
        function updateSelectedCount() {
            const selectedSeats = document.querySelectorAll('.row .seat.selected');

            const seatsIndex = [...selectedSeats].map(seat => [...seats].indexOf(seat));

            localStorage.setItem('selectedSeats', JSON.stringify(seatsIndex));

            const selectedSeatsCount = selectedSeats.length;

            count.innerText = selectedSeatsCount;
            total.innerText = selectedSeatsCount * ticketPrice;
        }


        // Seat click event
        container.addEventListener('click', e => {
            if (
                e.target.classList.contains('seat') &&
                !e.target.classList.contains('occupied')
            ) {
                e.target.classList.toggle('selected');

                updateSelectedCount();
            }
        });

        rezerveButton.addEventListener('click', e => {

            var array = [];

            $(".seat.selected").each(function( index ) {
                var id = $(this).attr('data-id');
                if (id > 0) {
                    array.push(id);
                }
            });

            var CSRF_TOKEN = "{{ csrf_token()  }}";
            myObj = {
                '_token': CSRF_TOKEN,
                'data': array,
            };
            $.ajax({
                url: "{{ route('film.rezervasyon.store', $film->id) }}",
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
                    var message = '';
                    var title = '';
                    if(data.status == 401){
                        //$('.ajax_login').show();
                        title = 'Uyarı';
                        message = 'Rezervasyon yapabilmeniz için giriş yapmanız gerekmektedir.';
                    }else{
                        //$('.ajax_error').show();
                        title = 'HATA';
                        message = 'Beklenmedik bir hata oluştu.';
                        if(data.responseJSON != typeof undefined && data.responseJSON.errors != typeof undefined && data.responseJSON.errors.data != typeof undefined){
                            message = data.responseJSON.errors.data[0];
                        }
                    }

                    Swal.fire({
                        icon: 'error',
                        title: title,
                        text: message,
                    });

                    setTimeout(function(){
                        //location.reload();
                    }, 1000 * 3);
                }
            });
        });

        // Initial count and total set
        updateSelectedCount();
    </script>
@endsection
