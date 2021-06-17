@extends('admin.layout.app')

@section('content')
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Anasayfa</h1>
                </div>
            </div>
        </div>
    </div>
    <section class="content">
        <div class="container-fluid">
            <div class="row">

                <div class="col-lg-4 col-6">
                    <div class="small-box bg-warning">
                        <div class="inner">
                            <h3>{{ $kullanicilar  }}</h3>
                            <p>Kullanıcılar</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-person-add"></i>
                        </div>
                        <a href="{{ route('admin.kullanicilar.index') }}" class="small-box-footer">Daha fazlası <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-6">
                    <!-- small box -->
                    <div class="small-box bg-info">
                        <div class="inner">
                            <h3>{{ $filmler  }}</h3>
                            <p>Filmler</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-bag"></i>
                        </div>
                        <a href="{{ route('admin.filmler.index')  }}" class="small-box-footer">Daha fazlası <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>

                <div class="col-lg-4 col-6">
                    <div class="small-box bg-success">
                        <div class="inner">
                            <h3>{{ $yorumlar  }}</h3>
                            <p>Onay Bekleyen Yorumlar</p>
                        </div>
                        <div class="icon">
                            <i class="ion ion-stats-bars"></i>
                        </div>
                        <a href="{{ route('admin.yorumlar.index') }}" class="small-box-footer">Daha fazlası <i class="fas fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-12">
                    <div class="box box-primary">
                        <div class="box-header with-border">
                            <i class="fa fa-tv"></i>
                            <h3 class="box-title">Son Eklenen Filmler</h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                @foreach($sonEklenenFilmler as $film)
                                <div class="col-md-4">
                                    <div class="box box-widget widget-user">
                                        <div class="widget-user-header bg-black" style="background: url('{{ $film->kapakfoto->resim_yolu  }}'); background-size: 100% 200%">
                                        </div>
                                        <div class="box-footer">
                                            <div class="row">
                                                <div class="col-sm-4 border-right">
                                                    <div class="description-block">
                                                        <h5 class="description-header">Adı</h5>
                                                        <span class="description-text">{{ $film->adi  }}</span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4 border-right">
                                                    <div class="description-block">
                                                        <h5 class="description-header">Kategorisi</h5>
                                                        <span class="description-text">{{  $film->kategori->adi }}</span>
                                                    </div>
                                                </div>
                                                <div class="col-sm-4">
                                                    <div class="description-block">
                                                        <h5 class="description-header">Süresi</h5>
                                                        <span class="description-text">{{ $film->sure  }}</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
