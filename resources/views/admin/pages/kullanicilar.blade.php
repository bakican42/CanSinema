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
                        <h3 class="card-title">Kullanıcı Listesi</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Ad</th>
                                <th>Soyad</th>
                                <th>Kullanıcı Adı</th>
                                <th>E-Posta</th>
                                <th>Telefon</th>
                                <th>Cinsiyet</th>
                                <th>Durum</th>
                            </tr>
                            </thead>
                            <tbody>
                                @if($kullanicilar->isEmpty())
                                    <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                                @endif

                                @foreach($kullanicilar as $kullanici)
                                    <tr>
                                        <td>{{ $kullanici->id  }}</td>
                                        <td>{{ $kullanici->ad  }}</td>
                                        <td>{{ $kullanici->soyad  }}</td>
                                        <td>{{ $kullanici->kullanici_adi  }}</td>
                                        <td>{{ $kullanici->email  }}</td>
                                        <td>{{ $kullanici->tel_no ?? 'Eklenmemiş'  }}</td>
                                        <td>{{ $kullanici->cinsiyet  }}</td>
                                        <td>
                                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#user-update-{{ $kullanici->id }}">
                                                <i class="fas fa-edit"></i> Düzenle
                                            </button>
                                            <a class="btn btn-danger btn-sm" href="{{  route('admin.kullanicilar.delete', $kullanici->id) }}">
                                                <i class="fas fa-trash"></i> Sil
                                            </a>
                                        </td>
                                    </tr>

                                    <div class="modal fade" id="user-update-{{ $kullanici->id }}" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">Large Modal</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">×</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="POST" action="{{ route('admin.kullanicilar.update', $kullanici->id)  }}">
                                                        @csrf
                                                        <div class="card-body">

                                                            <div class="form-group">
                                                                <label for="inputAd">Ad</label>
                                                                <input type="text" name="ad" class="form-control" id="inputAd" value="{{ $kullanici->ad  }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="inputSoyad">Soyad</label>
                                                                <input type="text" name="soyad" class="form-control" id="inputSoyad" value="{{ $kullanici->soyad  }}">
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="inputCinsiyet">Cinsiyet</label>
                                                                <select id="inputCinsiyet" name="cinsiyet" class="form-control">
                                                                    <option value="kadin" {{ $kullanici->cinsiyet == 'kadin' ? 'selected=""' : ''  }}>Kadın</option>
                                                                    <option value="erkek" {{ $kullanici->cinsiyet == 'erkek' ? 'selected=""' : ''  }}>Erkek</option>
                                                                </select>
                                                            </div>

                                                            <div class="form-group">
                                                                <label for="exampleInputPassword1">Şifre</label>
                                                                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
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
                            </tbody>
                        </table>
                    </div>
                    <!-- /.card-body -->
                    <div class="card-footer clearfix">
                        {{ $kullanicilar->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
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
