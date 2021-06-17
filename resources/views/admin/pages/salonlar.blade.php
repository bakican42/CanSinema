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
                        <h3 class="card-title">Salonların Listesi</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#yeni_salon_ekle">
                                <i class="fas fa-plus"></i> Yeni Salon Ekle
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
                                <th>Kapasite</th>
                                <th>AVM</th>
                                <th>Durum</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                                @if(!isset($salonlar) ||  (isset($salonlar) && $salonlar->isEmpty()))
                                    <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                                @else
                                    @foreach($salonlar as $salon)
                                    <tr>
                                        <td>{{ $salon->id  }}</td>
                                        <td>{{ $salon->adi  }}</td>
                                        <td>{{ $salon->kapasite  }}</td>
                                        <td>{{ $salon->avm->adi  }}</td>
                                        <td>{{ $salon->aktif_mi ? 'Aktif' : 'Pasif'  }}</td>
                                        <td>
                                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#salon-update-{{ $salon->id }}">
                                                <i class="fas fa-edit"></i> Düzenle
                                            </button>
                                            <a href="{{  route('admin.ayarlar.salonlar.delete', $salon->id)  }}" class="btn btn-danger btn-sm">
                                                <i class="fas fa-trash"></i> Sil
                                            </a>
                                        </td>
                                    </tr>

                                    <div class="modal fade" id="salon-update-{{ $salon->id }}" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Large Modal</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">×</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="POST" action="{{ route('admin.ayarlar.salonlar.update', $salon->id)  }}">
                                                        @csrf
                                                        <div class="card-body">

                                                            <div class="form-group">
                                                                <label for="inputAd">Ad</label>
                                                                <input type="text" name="adi" class="form-control" id="inputAd" value="{{ $salon->adi  }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="inputKapasite">Kapasite</label>
                                                                <input type="text" name="kapasite" class="form-control" id="inputKapasite" value="{{ $salon->kapasite  }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="inputAdx">AVM'nin bağlı olduğu İl</label>
                                                                <select name="avm_id" class="form-control">
                                                                    <option value="">Seçiniz</option>
                                                                    @foreach($avmler as $avm)
                                                                        <option value="{{ $avm->id  }}" {{ $salon->avm_id == $avm->id ? 'selected' : ''  }}>{{ $avm->adi }}</option>
                                                                    @endforeach
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                                                    <input name="aktif_mi"  {{ $salon->aktif_mi ? 'checked' : ''  }} value="1" type="checkbox" class="custom-control-input" id="aktif_mi_update_{{ $salon->id  }}">
                                                                    <label class="custom-control-label" for="aktif_mi_update_{{ $salon->id  }}">Aktif mi?</label>
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
                        {{ $salonlar->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>


    <div class="modal fade" id="yeni_salon_ekle" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title">Yeni Salon Ekle</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">
                    <form method="POST" action="{{ route('admin.ayarlar.salonlar.create')  }}">
                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputAdx">Salonun'nun bağlı olduğu AVM'i seçiniz</label>
                                <select name="avm_id" class="form-control">
                                    <option value="">Seçiniz</option>
                                    @foreach($avmler as $avm)
                                        <option value="{{ $avm->id  }}">{{ $avm->adi }}</option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="inputAdx">Salon Adı</label>
                                <input type="text" name="adi" class="form-control" id="inputAdx" value="">
                            </div>
                            <div class="form-group">
                                <label for="inputKapasite">Kapasite</label>
                                <input type="text" name="kapasite" class="form-control" id="inputKapasite">
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                    <input name="aktif_mi" value="1" type="checkbox" class="custom-control-input" id="customSwitch_create">
                                    <label class="custom-control-label" for="customSwitch_create">Aktif mi?</label>
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
