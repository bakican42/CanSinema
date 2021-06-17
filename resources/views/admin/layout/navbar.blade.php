<!-- Main Sidebar Container -->
<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{ route('admin.index')  }}" class="brand-link">
        <img src="/dist/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">Can Sinema</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

                <li class="nav-item">
                    <a href="{{ route('admin.index')  }}" class="nav-link {{ request()->routeIs('admin.index') ? 'active' : ''  }}">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>Anasayfa</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('admin.kullanicilar.index')  }}" class="nav-link {{ request()->routeIs('admin.kullanicilar.index') ? 'active' : ''  }}">
                        <i class="nav-icon fa fa-users"></i>
                        <p>Kullanıcılar</p>
                    </a>
                </li>

                <li class="nav-item {{ request()->routeIs('admin.filmler.*') ? 'menu-open' : ''  }}">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>Film ayarları<i class="fas fa-angle-left right"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.filmler.index')  }}" class="nav-link {{ request()->routeIs('admin.filmler.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Filmler</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.filmler.formatlar.index')  }}" class="nav-link {{ request()->routeIs('admin.filmler.formatlar.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Film Formatları</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.filmler.diller.index')  }}" class="nav-link {{ request()->routeIs('admin.filmler.diller.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Film Dilleri</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.filmler.kategoriler.index')  }}" class="nav-link {{ request()->routeIs('admin.filmler.kategoriler.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Film Kategorileri</p>
                            </a>
                        </li>
                    </ul>
                </li>

                <li class="nav-item {{ request()->routeIs('admin.ayarlar.*') ? 'menu-open' : ''  }}">
                    <a href="#" class="nav-link {{ request()->routeIs('admin.ayarlar.*') ? 'active' : ''  }}">
                        <i class="nav-icon fas fa-edit"></i>
                        <p>Genel ayarlar<i class="fas fa-angle-left right"></i></p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{ route('admin.ayarlar.iller.index')  }}" class="nav-link {{ request()->routeIs('admin.ayarlar.iller.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>İller</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.ayarlar.avmler.index')  }}" class="nav-link {{ request()->routeIs('admin.ayarlar.avmler.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>AVM'ler</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.ayarlar.salonlar.index')  }}" class="nav-link {{ request()->routeIs('admin.ayarlar.salonlar.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Salonlar</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.ayarlar.seanslar.index')  }}" class="nav-link {{ request()->routeIs('admin.ayarlar.seanslar.index') ? 'active' : ''  }}">
                                <i class="far fa-circle nav-icon"></i>
                                <p>Seanslar</p>
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="nav-item">
                    <a href="{{ route('admin.yorumlar.index')  }}" class="nav-link" {{ request()->routeIs('admin.yorumlar.index') ? 'active' : ''  }}">
                        <i class="nav-icon fa fa-users"></i>
                        <p>Yorumlar</p>
                    </a>
                </li>


                <li class="nav-item">
                    <a href="{{ route('admin.adminler.index')  }}" class="nav-link" {{ request()->routeIs('admin.adminler.index') ? 'active' : ''  }}">
                    <i class="nav-icon fa fa-users"></i>
                    <p>Admin Listesi</p>
                    </a>
                </li>

                <li class="nav-item">
                    <a href="{{ route('admin.slider.index')  }}" class="nav-link" {{ request()->routeIs('admin.slider.index') ? 'active' : ''  }}">
                    <i class="nav-icon fa fa-users"></i>
                    <p>Slider Listesi</p>
                    </a>
                </li>

            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
<!-- Main Sidebar Container -->
