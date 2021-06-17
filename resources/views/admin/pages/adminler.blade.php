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
                        <h3 class="card-title">Admin Listesi</h3>
                        <div class="card-tools">
                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#yeni_il_ekle">
                                <i class="fas fa-plus"></i> Yeni Admin Ekle
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
                                <th>Soyad</th>
                                <th>Kullanıcı Adı</th>
                                <th>E-Posta</th>
                                <th>Doğum Tarihi</th>
                                <th>Telefon</th>
                                <th>-</th>
                            </tr>
                            </thead>
                            <tbody>
                            @if(!isset($adminler) ||  (isset($adminler) && $adminler->isEmpty()))
                                <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                            @else
                                @foreach($adminler as $admin)
                                    <tr>
                                        <td>#{{ $admin->id }}</td>
                                        <td>{{ $admin->ad }}</td>
                                        <td>{{ $admin->soyad }}</td>
                                        <td>{{ $admin->kullanici_adi }}</td>
                                        <td>{{ $admin->email }}</td>
                                        <td>{{ $admin->dogum_tarihi }}</td>
                                        <td>{{ $admin->tel_no }}</td>
                                        <td>
                                            <button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#user-update-{{ $admin->id }}">
                                                <i class="fas fa-edit"></i> Düzenle
                                            </button>
                                            <a href="{{ route('admin.adminler.delete', $admin->id)  }}" class="btn btn-danger btn-sm">
                                                <i class="fas fa-trash"></i> Sil
                                            </a>
                                        </td>
                                    </tr>
                                    <div class="modal fade" id="user-update-{{ $admin->id }}" aria-hidden="true" style="display: none;">
                                        <div class="modal-dialog modal-lg">
                                            <div class="modal-content">
                                                <div class="modal-header">
                                                    <h4 class="modal-title">#{{ $admin->tam_ad  }} Güncelle</h4>
                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                        <span aria-hidden="true">×</span>
                                                    </button>
                                                </div>
                                                <div class="modal-body">
                                                    <form method="POST" action="{{ route('admin.adminler.update', $admin->id)  }}">
                                                        @csrf
                                                        <div class="card-body">
                                                            <div class="form-group">
                                                                <label for="inputAd">Ad</label>
                                                                <input type="text" name="ad" class="form-control" id="inputAd" value="{{ $admin->ad  }}">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputSoyad">Soyad</label>
                                                                <input type="text" name="soyad" class="form-control" id="inputSoyad" value="{{ $admin->soyad  }}">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputDogumTarihi">Doğum Tarihi</label>
                                                                <input type="text" name="dogum_tarihi" class="form-control" id="inputDogumTarihi" value="{{ $admin->dogum_tarihi }}">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputTelefon">Telefon</label>
                                                                <input type="text" name="tel_no" class="form-control" id="inputTelefon" value="{{ $admin->tel_no }}">
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputCinsiyet">Cinsiyet</label>
                                                                <select name="cinsiyet" id="inputCinsiyet" class="form-control">
                                                                    <option value="kadin" {{ $admin->cinsiyet == 'kadin' ? 'selected' : '' }} >Kadın</option>
                                                                    <option value="erkek" {{ $admin->cinsiyet == 'erkek' ? 'selected' : '' }}>Erkek</option>
                                                                </select>
                                                            </div>
                                                            <div class="form-group">
                                                                <label for="inputSifre">Şifre</label>
                                                                <input type="password" name="password" class="form-control" id="inputSifre">
                                                            </div>
                                                        </div>
                                                        <!-- /.card-body -->
                                                        <div class="card-footer">
                                                            <button type="submit" class="btn btn-primary">Güncelle</button>
                                                        </div>
                                                    </form>
                                                </div>
                                                <div class="modal-footer justify-content-between">
                                                    <button type="button" class="btn btn-default" data-dismiss="modal">Kapat</button>
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
                        {{ $adminler->links()  }}
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
                    <form method="POST" action="{{ route('admin.adminler.create')  }}">
                        @csrf
                        <div class="card-body">
                            <div class="form-group">
                                <label for="inputAd">Ad</label>
                                <input type="text" name="ad" class="form-control" id="inputAd" value="{{ old('ad') }}">
                            </div>
                            <div class="form-group">
                                <label for="inputSoyad">Soyad</label>
                                <input type="text" name="soyad" class="form-control" id="inputSoyad" value="{{ old('soyad') }}">
                            </div>
                            <div class="form-group">
                                <label for="inputKullaniciAdi">Kullanıcı Adı</label>
                                <input type="text" name="kullanici_adi" class="form-control" id="inputKullaniciAdi" value="{{ old('kullanici_adi') }}">
                            </div>
                            <div class="form-group">
                                <label for="inputEmail">E-posta</label>
                                <input type="text" name="email" class="form-control" id="inputEmail" value="{{ old('email') }}">
                            </div>
                            <div class="form-group">
                                <label for="inputDogumTarihi">Doğum Tarihi</label>
                                <input type="text" name="dogum_tarihi" class="form-control" id="inputDogumTarihi" value="{{ old('dogum_tarihi') }}">
                            </div>
                            <div class="form-group">
                                <label for="inputTelefon">Telefon</label>
                                <input type="text" name="tel_no" class="form-control" id="inputTelefon" value="{{ old('tel_no') }}">
                            </div>
                            <div class="form-group">
                                <label for="inputCinsiyet">Cinsiyet</label>
                                <select name="cinsiyet" id="inputCinsiyet" class="form-control">
                                    <option value="">Seçiniz</option>
                                    <option value="kadin">Kadın</option>
                                    <option value="erkek">Erkek</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="inputSifre">Şifre</label>
                                <input type="password" name="password" class="form-control" id="inputSifre">
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
