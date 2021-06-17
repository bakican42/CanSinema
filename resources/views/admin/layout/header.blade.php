<!-- Navbar -->
<nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">

        <!-- Notifications Dropdown Menu -->
        <li class="nav-item dropdown">
            <a class="nav-link" data-toggle="dropdown" href="#">
                <i class="far fa-bell"></i>
                <span class="badge badge-warning navbar-badge">{{ $yorumlar_bekleyen  }}</span>
            </a>
            <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
                <span class="dropdown-item dropdown-header">{{ $yorumlar_bekleyen  }} Bildirim</span>
                <div class="dropdown-divider"></div>
                <a href="{{ route('admin.yorumlar.index')  }}" class="dropdown-item">
                    <i class="fas fa-envelope mr-2"></i> {{ $yorumlar_bekleyen  }} Bekleyen yorum
                    <span class="float-right text-muted text-sm">3 mins</span>
                </a>
                <div class="dropdown-divider"></div>
                <a href="{{ route('admin.yorumlar.index')  }}" class="dropdown-item dropdown-footer">Tüm yorumları gör</a>
            </div>
        </li>
        <li class="nav-item">
            <a class="nav-link" data-widget="fullscreen" href="#" role="button">
                <i class="fas fa-expand-arrows-alt"></i>
            </a>
        </li>
        <li class="nav-item">
            <a class="nav-link"  href="{{ route('home')  }}" >
                Siteye Git
            </a>
        </li>
    </ul>
</nav>
<!-- /.navbar -->
