@extends('admin.layout.app')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    @if ($errors->any())
                        <div class="alert alert-danger alert-dismissible">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                            <h5><i class="icon fas fa-ban"></i> HATA!</h5>
                            @foreach ($errors->all() as $error)
                                {{ $error }}<br>
                            @endforeach
                        </div>
                    @endif
                    <div class="card-header">
                        <h3 class="card-title">Filmerin Listesi</h3>
                        <div class="card-tools">
                            <a href="{{ route('admin.filmler.create')  }}" class="btn btn-success btn-sm">
                                <i class="fas fa-plus"></i> Yeni Film Ekle
                            </a>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0" >
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Adı</th>
                                <th>AVM</th>
                                <th>Salon</th>
                                <th>Kategori</th>
                                <th>Formatlar</th>
                                <th>Diller</th>
                                <th>Açıklama</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                                @if(!isset($filmler) ||  (isset($filmler) && $filmler->isEmpty()))
                                    <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                                @else
                                    @foreach($filmler as $film)
                                        <tr>
                                            <td>{{ $film->id }}</td>
                                            <td>{{ $film->adi }}</td>
                                            <td>{{ $film->salon->avm->adi }}</td>
                                            <td>{{ $film->salon->adi }}</td>
                                            <td>{{ $film->kategori->adi }}</td>
                                            <td>{{ $film->format->adi }}</td>
                                            <td>{{ $film->dil->adi }}</td>
                                            <td>{{ $film->aciklama_kisa }}</td>
                                            <td>
                                                <a href="{{ route('admin.filmler.show', $film->id) }}" class="btn btn-success btn-sm">
                                                    <i class="fas fa-edit"></i> Düzenle
                                                </a>
                                                <a href="{{  route('admin.filmler.delete', $film->id)  }}" class="btn btn-danger btn-sm">
                                                    <i class="fas fa-trash"></i> Sil
                                                </a>
                                            </td>
                                        </tr>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer clearfix">
                        {{ $filmler->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
@endsection
