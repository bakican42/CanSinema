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
                        <h3 class="card-title">AVM Listesi</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#yeni_avm_ekle">
                                <i class="fas fa-plus"></i> Yeni AVM Ekle
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
                                <th>Bağlı Olduğu İl</th>
                                <th>Durum</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                                @if(!isset($avmler) ||  (isset($avmler) && $avmler->isEmpty()))
                                    <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                                @else
                                    @foreach($avmler as $avm)
                                        <tr>
                                            <td>{{ $avm->id  }}</td>
                                            <td>{{ $avm->adi  }}</td>
                                            <td>{{ $avm->il->ad  }}</td>
                                            <td>{{ $avm->aktif_mi ? 'Aktif' : 'Pasif'  }}</td>
                                            <td>
                                                <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#avm-update-{{ $avm->id }}">
                                                    <i class="fas fa-edit"></i> Düzenle
                                                </button>
                                                <form action="{{  route('admin.kullanicilar.delete', $avm->id) }}" method="POST" style="display: initial">
                                                    @csrf
                                                    <button type="submit" class="btn btn-danger btn-sm" data-toggle="modal" data-target="#user-delete-{{ $avm->id  }}">
                                                        <i class="fas fa-trash"></i> Sil
                                                    </button>
                                                </form>
                                            </td>
                                        </tr>

                                        <div class="modal fade" id="avm-update-{{ $avm->id }}" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-lg">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <h4 class="modal-title">AVM Güncelleme</h4>
                                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                            <span aria-hidden="true">×</span>
                                                        </button>
                                                    </div>
                                                    <div class="modal-body">
                                                        <form method="POST" action="{{ route('admin.ayarlar.avmler.update', $avm->id)  }}">
                                                            @csrf
                                                            <div class="card-body">

                                                                <div class="form-group">
                                                                    <label for="inputAd">Ad</label>
                                                                    <input type="text" name="adi" class="form-control" id="inputAd" value="{{ $avm->adi  }}">
                                                                </div>

                                                                <div class="form-group">
                                                                    <label for="inputAdx">AVM'nin bağlı olduğu İl</label>
                                                                    <select name="il_id" class="form-control">
                                                                        <option value="">Seçiniz</option>
                                                                        @foreach($iller as $il)
                                                                            <option value="{{ $il->id  }}" {{ $avm->il_id == $il->id ? 'selected' : ''  }}>{{ $il->ad }}</option>
                                                                        @endforeach
                                                                    </select>
                                                                </div>
                                                                <div class="form-group">
                                                                    <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                                                        <input name="aktif_mi"  {{ $avm->aktif_mi ? 'checked' : ''  }} value="1" type="checkbox" class="custom-control-input" id="aktif_mi_update_{{ $avm->id  }}">
                                                                        <label class="custom-control-label" for="aktif_mi_update_{{ $avm->id  }}">Aktif mi?</label>
                                                                    </div>
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
                        {{ $avmler->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>


    <div class="modal fade" id="yeni_avm_ekle" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Yeni AVM Ekle</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('admin.ayarlar.avmler.create')  }}">
                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputAdx">AVM'nin bağlı olduğu İl'i seçiniz</label>
                                <select name="il_id" class="form-control">
                                    <option value="">Seçiniz</option>
                                    @foreach($iller as $il)
                                        <option value="{{ $il->id  }}">{{ $il->ad }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="inputAdx">AVM Adı</label>
                                <input type="text" name="adi" class="form-control" id="inputAdx" value="">
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                    <input name="aktif_mi" value="1" type="checkbox" class="custom-control-input" id="customSwitch_{{ $avm->id }}">
                                    <label class="custom-control-label" for="customSwitch_{{ $avm->id }}">Aktif mi?</label>
                                </div>
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
