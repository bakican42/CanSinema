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
                        <h3 class="card-title">Seanlar Listesi</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#yeni_seans_ekle">
                                <i class="fas fa-plus"></i> Yeni Seans Ekle
                            </button>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Seans Saati</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                                @if(!isset($seanslar) ||  (isset($seanslar) && $seanslar->isEmpty()))
                                    <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                                @else
                                    @foreach($seanslar as $seans)
                                        <tr>
                                            <td>{{ $seans->id  }}</td>
                                            <td>{{ $seans->adi  }}</td>
                                            <td>
                                                <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#seans-update-{{ $seans->id }}">
                                                    <i class="fas fa-edit"></i> Düzenle
                                                </button>
                                                <a href="{{  route('admin.ayarlar.seanslar.delete', $seans->id)  }}" class="btn btn-danger btn-sm">
                                                    <i class="fas fa-trash"></i> Sil
                                                </a>
                                            </td>
                                        </tr>

                                        <div class="modal fade" id="seans-update-{{ $seans->id }}" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Seans Güncelle</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form method="POST" action="{{ route('admin.ayarlar.seanslar.update', $seans->id)  }}">
                                                            @csrf
                                                            <div class="card-body">
                                                                <div class="input-group">
                                                                    <div class="input-group-prepend">
                                                                        <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                                                    </div>
                                                                    <input type="text" name="adi" value="{{ $seans->adi  }}" class="form-control" data-inputmask-alias="datetime" data-inputmask-inputformat="dd/mm/yyyy" data-mask>
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
                        {{ $seanslar->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>


    <div class="modal fade" id="yeni_seans_ekle" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Yeni Seans Ekle</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('admin.ayarlar.seanslar.create')  }}">
                        @csrf
                        <div class="card-body">

                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="far fa-calendar-alt"></i></span>
                                </div>
                                <input type="text" class="form-control" name="adi" placeholder="12:45">
                            </div>
                        </div>
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

@section('scripts')
    @if (session('status') && session('mesaj'))
        <script type="text/javascript">
            var status =  '{{ session('status') ? 'success' : 'danger'  }}';
            var message = '{{ session('mesaj')  }}'
            notification(status, message);
        </script>
    @endif
@endsection
