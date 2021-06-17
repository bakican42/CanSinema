@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Kayıt Ol') }}</div>

                <div class="card-body">
                    <form method="POST" action="{{ route('register') }}">
                        @csrf

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="ad" class="col-md-4 col-form-label text-md-right">{{ __('Ad') }}</label>

                            <div class="col-md-6">
                                <input id="ad" type="text" class="form-control @error('ad') is-invalid @enderror" name="ad" value="{{ old('ad') }}" required autocomplete="ad" autofocus>

                                @error('ad')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="soyad" class="col-md-4 col-form-label text-md-right">{{ __('Soyad') }}</label>

                            <div class="col-md-6">
                                <input id="soyad" type="text" class="form-control @error('soyad') is-invalid @enderror" name="soyad" value="{{ old('soyad') }}" required autocomplete="soyad" autofocus>

                                @error('soyad')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="kullanici_adi" class="col-md-4 col-form-label text-md-right">{{ __('Kullanıcı Adı') }}</label>

                            <div class="col-md-6">
                                <input id="kullanici_adi" type="text" class="form-control @error('kullanici_adi') is-invalid @enderror" name="kullanici_adi" value="{{ old('kullanici_adi') }}" required autocomplete="kullanici_adi" autofocus>

                                @error('kullanici_adi')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="email" class="col-md-4 col-form-label text-md-right">{{ __('E-Posta adresi') }}</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email">

                                @error('email')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="tel_no" class="col-md-4 col-form-label text-md-right">{{ __('Telefon Numaranız') }}</label>

                            <div class="col-md-6">
                                <input id="tel_no" type="tel_no" class="form-control @error('tel_no') is-invalid @enderror" name="tel_no" value="{{ old('tel_no') }}" autocomplete="tel_no">

                                @error('tel_no')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="dogum_tarihi" class="col-md-4 col-form-label text-md-right">{{ __('Doğum Tarihiniz') }}</label>
                            <div class="col-md-6">
                                <input id="dogum_tarihi" placeholder="Gun.Ay.Yıl" type="text" class="form-control @error('dogum_tarihi') is-invalid @enderror" name="dogum_tarihi" value="{{ old('dogum_tarihi') }}" autocomplete="dogum_tarihi">
                                @error('dogum_tarihi')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="cinsiyet" class="col-md-4 col-form-label text-md-right">{{ __('Cinsiyet') }}</label>

                            <div class="col-md-6">

                                <select id="cinsiyet" name="cinsiyet" class="form-control @error('cinsiyet') is-invalid @enderror">
                                    <option value="">Seçiniz</option>
                                    <option value="1">Erkek</option>
                                    <option value="2">Kadın</option>
                                </select>

                                @error('cinsiyet')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="password" class="col-md-4 col-form-label text-md-right">{{ __('Şifre') }}</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="new-password">

                                @error('password')
                                    <span class="invalid-feedback" role="alert">
                                        <strong>{{ $message }}</strong>
                                    </span>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group row" style="margin:5px 0px;">
                            <label for="password-confirm" class="col-md-4 col-form-label text-md-right">{{ __('Şifre Tekrar') }}</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="form-control" name="password_confirmation" required autocomplete="new-password">
                            </div>
                        </div>

                        <div class="form-group row  style="margin:5px 0px;"mb-0">
                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    {{ __('Kayıt Ol') }}
                                </button>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

@section('scripts')
<script src="https://cdnjs.cloudflare.com/ajax/libs/inputmask/4.0.9/jquery.inputmask.bundle.min.js"></script>
<script>
    $(document).ready(function(){
        $("#dogum_tarihi").inputmask({"mask": "99.99.9999"});
    });
</script>
@endsection
