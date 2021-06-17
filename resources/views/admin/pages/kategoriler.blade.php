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
                        <h3 class="card-title">Kategori Listesi</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#yeni_il_ekle">
                                <i class="fas fa-plus"></i> Yeni Kategori Ekle
                            </button>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th width="10%">ID</th>
                                <th width="80%">Ad</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                                @if(!isset($kategoriler) ||  (isset($kategoriler) && $kategoriler->isEmpty()))
                                    <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                                @else
                                    @foreach($kategoriler as $kategori)
                                        <tr>
                                            <td>{{ $kategori->id  }}</td>
                                            <td class="text-left">{{ $kategori->adi }}</td>
                                            <td>
                                                <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#user-update-{{ $kategori->id }}">
                                                    <i class="fas fa-edit"></i> Düzenle
                                                </button>
                                                <a href="{{ route('admin.filmler.kategoriler.delete', $kategori->id)  }}" class="btn btn-danger btn-sm">
                                                    <i class="fas fa-trash"></i> Sil
                                                </a>
                                            </td>
                                        </tr>
                                        <div class="modal fade" id="user-update-{{ $kategori->id }}" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Kategori Düzenle #{{ $kategori->id }}</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form method="POST" action="{{ route('admin.filmler.kategoriler.update', $kategori->id)  }}">
                                                            @csrf
                                                            <div class="card-body">

                                                                <div class="form-group">
                                                                    <label for="inputAd">Ad</label>
                                                                    <input type="text" name="adi" class="form-control" id="inputAd" value="{{ $kategori->adi  }}">
                                                                </div>
                                                            </div>
                                                            <!-- /.card-body -->
                                                            <div class="card-footer">
                                                                <button type="submit" class="btn btn-primary">Güncelle</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                    <div class="modal-footer justify-content-between">
                                                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                    @endforeach
                                @endif
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer clearfix">
                        {{ $kategoriler->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>


    <div class="modal fade" id="yeni_il_ekle" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Yeni Kategori Ekle</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('admin.filmler.kategoriler.create')  }}">
                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputAdx">Kategori Adı</label>
                                <input type="text" name="adi" class="form-control" id="inputAdx" value="">
                            </div>
                        </div>
                        <!-- /.card-body -->
                        <div class="card-footer">
                            <button type="submit" class="btn btn-primary">Ekle</button>
                        </div>
                    </form>
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
@endsection
