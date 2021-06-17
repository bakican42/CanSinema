@extends('layouts.app')
@section('content')
    <div class="container">
        <form style="margin-bottom: 10px;" action="" method="get">
            <div class="row">
                <div class="col col-md-2 col-xs-3">
                    <select name="il_id" class="form-control" onchange="setAVM(this)">
                        <option value="">Şehir Seçiniz</option>
                        @foreach($iller as $il)
                        <option value="{{ $il->id  }}" {{ request()->il_id == $il->id ? 'selected' : '' }} >{{ $il->ad }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col col-md-2 col-xs-3">
                    <select name="avm_id" id="avm_id" class="form-control">
                        <option data-option="default_value" value="">AVM Seçiniz</option>
                        @foreach($avmler as $avm)
                            <option value="{{ $avm->id  }}" data-ilid="{{ $avm->il_id }}" {{ request()->avm_id == $avm->id ? 'selected' : '' }} style="display: none;">{{ $avm->adi }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="col col-md-2 col-xs-3">
                    <select name="kategori_id" class="form-control">
                        <option data-option="default_value" value="">Tür Seçiniz</option>
                        @foreach($kategoriler as $kategori)
                            <option value="{{ $kategori->id  }}" {{ request()->kategori_id == $kategori->id ? 'selected' : '' }}>{{ $kategori->adi }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="col col-md-2 col-xs-3">
                    <select name="format_id"  class="form-control">
                        <option data-option="default_value" value="">Format Seçiniz</option>
                        @foreach($formatlar as $format)
                            <option value="{{ $format->id  }}" {{ request()->format_id == $format->id ? 'selected' : '' }} >{{ $format->adi }}</option>
                        @endforeach
                    </select>
                </div>

                <div class="col col-md-2 col-xs-3">
                    <select name="dil_id"  class="form-control">
                        <option data-option="default_value" value="">Dil Seçiniz</option>
                        @foreach($diller as $dil)
                            <option value="{{ $dil->id  }}" {{ request()->dil_id == $dil->id ? 'selected' : '' }}>{{ $dil->adi }}</option>
                        @endforeach
                    </select>
                </div>


                <div class="col col-md-2 col-xs-3">
                    <button type="submit" class="btn btn-outline-primary btn-sm btn-block">Filtrele</button>
                    <a href="{{ route('filmler') }}" class="btn btn-outline-danger btn-sm btn-block">Sıfırla</a>
                </div>

            </div>
        </form>

        <div class="row row-cols-1 row-cols-sm-2 row-cols-md-5 g-3">
            @if($filmler->isEmpty())
                <div class="col-md-6" style="float: none;margin: 20px auto;">
                    <div class="alert alert-danger text-center" role="alert">
                        Üzgünüz, aradığınız kriterlere uygun film bulunamadı.
                    </div>
                </div>
            @endif
            @foreach($filmler as $film)
                <div class="col">
                    <div class="card shadow-sm">
                        <img src="{{ $film->kapakfoto->resim_yolu  }}">
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
@endsection
@section('scripts')
    <script>
        function getUrlParameter(sParam) {
            var sPageURL = window.location.search.substring(1),
                sURLVariables = sPageURL.split('&'),
                sParameterName,
                i;

            for (i = 0; i < sURLVariables.length; i++) {
                sParameterName = sURLVariables[i].split('=');

                if (sParameterName[0] === sParam) {
                    return typeof sParameterName[1] === undefined ? true : decodeURIComponent(sParameterName[1]);
                }
            }
            return false;
        }
        function setAVM(obj)
        {
            var avm_id = $(obj).val();
            $('#avm_id option').hide();
            $('#avm_id option[data-option="default_value"]').show();
            $('#avm_id option[data-ilid="'+ avm_id+'"]').show();
        }


        $(document).ready(function(){
            var il_id = getUrlParameter('il_id');
            $('#avm_id option').hide();
            $('#avm_id option[data-option="default_value"]').show();
            $('#avm_id option[data-ilid="'+ il_id+'"]').show();
        });
    </script>
@endsection

