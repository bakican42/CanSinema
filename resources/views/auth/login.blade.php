@extends('layouts.app')

@section('content')
    <div class="container col-xl-10 col-xxl-8 px-4 py-5">
        <div class="row align-items-center g-lg-5 py-5">
            <div class="col-lg-7 text-center text-lg-start">
                <h1 class="display-4 fw-bold lh-1 mb-3">HOŞ GELDİNİZ</h1>
                <p class="col-lg-10 fs-4">Şimdi Giriş Yapın</p>
            </div>
            <div class="col-md-10 mx-auto col-lg-5">
                <form class="p-4 p-md-5 border rounded-3 bg-light" method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-floating mb-3">

                        <input id="email" type="email" class="form-control @error('email') is-invalid @enderror" name="email" value="{{ old('email') }}" required autocomplete="email" autofocus>
                        <label for="email">Email adresiniz</label>
                        @error('email')
                            <span class="invalid-feedback" role="alert">
                                <strong>{{ $message }}</strong>
                            </span>
                        @enderror
                    </div>
                    <div class="form-floating mb-3">
                        <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" name="password" required autocomplete="current-password">
                        <label for="password">Şifreniz</label>
                        @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                        @enderror
                    </div>
                    <div class="checkbox mb-3">
                        <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                        <label>
                            Beni Hatırla
                        </label>
                    </div>
                    <button class="w-100 btn btn-lg btn-primary" type="submit">Giriş Yap</button>
                    @if (Route::has('password.request'))
                        <a class="btn btn-link" href="{{ route('password.request') }}">
                            {{ __('Şifreni mi unuttun?') }}
                        </a>
                    @endif
                    <hr class="my-4">
                    <small class="text-muted">Kaydol'a tıklayarak kullanım koşullarını kabul etmiş olursunuz.</small>
                </form>
            </div>
        </div>
    </div>
@endsection
