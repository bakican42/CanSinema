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
                        <h3 class="card-title">İl Listesi</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#yeni_il_ekle">
                                <i class="fas fa-plus"></i> Yeni İl Ekle
                            </button>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Ad</th>
                                <th>-</th>
                            </tr>
                            </thead>
                            <tbody>
                                @if(!isset($iller) ||  (isset($iller) && $iller->isEmpty()))
                                    <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                                @else
                                    @foreach($iller as $il)
                                        <tr>
                                            <td>{{ $il->id  }}</td>
                                            <td>{{ $il->ad  }}</td>
                                            <td>
                                                <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#user-update-{{ $il->id }}">
                                                    <i class="fas fa-edit"></i> Düzenle
                                                </button>
                                                <a href="{{ route('admin.ayarlar.iller.delete', $il->id)  }}" class="btn btn-danger btn-sm">
                                                    <i class="fas fa-trash"></i> Sil
                                                </a>
                                            </td>
                                        </tr>
                                        <div class="modal fade" id="user-update-{{ $il->id }}" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">Large Modal</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form method="POST" action="{{ route('admin.ayarlar.iller.update', $il->id)  }}">
                                                            @csrf
                                                            <div class="card-body">

                                                                <div class="form-group">
                                                                    <label for="inputAd">Ad</label>
                                                                    <input type="text" name="ad" class="form-control" id="inputAd" value="{{ $il->ad  }}">
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
                        {!! $iller->links() !!}
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
                    <h4 class="modal-title">Yeni İl Ekle</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('admin.ayarlar.iller.create')  }}">
                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputAdx">İl Adı</label>
                                <input type="text" name="ad" class="form-control" id="inputAdx" value="">
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

@section('scripts')
    @if (session('status') && session('mesaj'))
        <script type="text/javascript">
            var status =  '{{ session('status') ? 'success' : 'danger'  }}';
            var message = '{{ session('mesaj')  }}'
            notification(status, message);
        </script>
    @endif
@endsection
