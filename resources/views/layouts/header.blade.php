<header>
    <div class="px-3 py-2 bg-dark text-white">
    <div class="container">
        <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
        <a href="/" class="d-flex align-items-center my-2 my-lg-0 me-lg-auto text-white text-decoration-none">
            <img src="{{ asset('images/logo.png?v=1') }}" width="200">
        </a>

        <ul class="nav col-12 col-lg-auto my-2 justify-content-center my-md-0 text-small">
            <li>
            <a href="{{ route('home')  }}" class="nav-link text-secondary">
                Anasayfa
            </a>
            </li>
            <li>
            <a href="{{ route('filmler')  }}" class="nav-link text-white">
                Filmler
            </a>
            </li>
            <li>
            <a href="{{ route('trendler')  }}" class="nav-link text-white">
                Trendler
            </a>
            </li>
        </ul>
        </div>
    </div>
    </div>
    <div class="px-3 py-2 border-bottom mb-3">
    <div class="container d-flex flex-wrap justify-content-center">
        <form class="col-12 col-lg-auto mb-2 mb-lg-0 me-lg-auto" method="GET" action="{{ route('filmler')  }}" id="search_form">
            <input type="search" name="film_adi" class="form-control" placeholder="Ara" aria-label="Search">
        </form>
        @auth
            <button type="button" name="username" value="{{ auth()->user()->kullanici_adi }}" class="btn btn-light">{{ auth()->user()->kullanici_adi }}</button>
            @if(auth()->user()->is_admin)
                <a href="{{ route('admin.index' )}}" target="_blank" class="btn btn-primary me-2">Yönetim Sayfası</a>
            @endif
            <a href="{{ route('logout' )}}" value="Çıkış Yap" class="btn btn-danger me-2">Çıkış yap</a>
        @endauth
        <div class="text-end">
            @guest
                <a href="{{ route('login') }}" class="btn btn-light text-dark me-2">Giriş</a>
                <a href="{{ route('register') }}" class="btn btn-primary">Kayıt Ol</a>
            @endguest
        </div>
    </div>
    </div>
</header>
