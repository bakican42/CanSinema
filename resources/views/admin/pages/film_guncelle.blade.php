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
                        <h3 class="card-title">Film Güncelle #{{ $film->id  }} - {{ $film->adi  }}</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive">
                        <form action="{{ route('admin.filmler.update', $film->id)  }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="row">
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <label for="fAdi">Film Adı</label>
                                        <input type="text" name="adi" class="form-control" id="fAdi" value="{{ $film->adi  }}">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <label for="fYonetmen">Yönetmen</label>
                                        <input type="text" name="yonetmen"class="form-control" id="fYonetmen" value="{{ $film->yonetmen  }}">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <label for="fOyuncular">Oyuncular</label>
                                        <input type="text" name="oyuncular"class="form-control" id="fOyuncular" value="{{ $film->oyuncular }}">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <label for="cBilet">Bilet Ücreti</label>
                                        <input type="text" name="bilet_ucreti" id="cBilet" class="form-control" value="{{ $film->bilet_ucreti }}">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <label for="fSure">Süresi</label>
                                        <input type="text" name="sure"class="form-control" id="fSure" value="{{ $film->sure }}">
                                    </div>
                                </div>
                                <div class="col-sm-2">
                                    <div class="form-group">
                                        <label for="fVizyonTarihi">Vizyon Tarihi</label>
                                        <input type="text" name="vizyon_tarihi" class="form-control" id="fVizyonTarihi" value="{{ $film->vizyon_tarihi_format }}">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group">
                                        <label for="fFragman">Fragman Adresi</label>
                                        <input type="text" name="fragman_url" class="form-control" id="fFragman" value="{{ $film->fragman_url }}">
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="cKategori">Kategori</label>
                                        <select name="kategori_id" class="form-control form-control-border" id="cKategori">
                                            <option>Seçiniz</option>
                                            @if(!$kategoriler->isEmpty())
                                                @foreach($kategoriler as $kategori)
                                                    <option value="{{ $kategori->id  }}" {{ $film->kategori_id == $kategori->id ? 'selected' : ''  }} >{{ $kategori->adi }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="cFormat">Format</label>
                                        <select name="format_id" class="form-control form-control-border" id="cFormat">
                                            <option>Seçiniz</option>
                                            @if(!$formatlar->isEmpty())
                                                @foreach($formatlar as $format)
                                                    <option value="{{ $format->id  }}" {{ $film->format_id == $format->id ? 'selected' : ''  }}>{{ $format->adi }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="cDil">Dil</label>
                                        <select name="dil_id" class="form-control form-control-border" id="cDil">
                                            <option>Seçiniz</option>
                                            @if(!$diller->isEmpty())
                                                @foreach($diller as $dil)
                                                <option value="{{ $dil->id  }}" {{ $film->dil_id == $dil->id ? 'selected' : ''  }}>{{ $dil->adi }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="cAvm">AVM</label>
                                        <select name="avm_id" class="form-control form-control-border" id="cAvm" onchange="salonlariGetir(this)">
                                            <option>Seçiniz</option>
                                            @if(!$avmler->isEmpty())
                                                @foreach($avmler as $avm)
                                                    <option value="{{ $avm->id  }}"  {{ $film->salon->avm->id == $avm->id ? 'selected' : ''  }}>{{ $avm->adi }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="cSalon">Salon</label>
                                        <select name="salon_id" class="form-control form-control-border" id="cSalon">
                                            <option data-default="true">Seçiniz</option>
                                            @if(!$salonlar->isEmpty())
                                                @foreach($salonlar as $salon)
                                                    <option {{ $film->salon_id == $salon->id ? 'selected' : 'style="display: none;"'  }} data-avmid="{{ $salon->avm_id  }}" value="{{ $salon->id  }}">{{ $salon->adi }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>

                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="cSeanslar">Seanslar</label>
                                        <select name="seans_id[]" class="form-control form-control-border select2" id="cSeanslar"  multiple="multiple">
                                            <option>Seçiniz</option>
                                            @if(!$seanslar->isEmpty())
                                                @foreach($seanslar as $seans)
                                                    <option value="{{ $seans->id  }}" {{ $film->seans->where('seans_id', $seans->id)->count() >= 1 ? 'selected' : '' }} >{{ $seans->adi }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card card-info">
                                        <div class="card-header">
                                            <h3 class="card-title">Film Fotoğrafları</h3>
                                        </div>
                                        <div class="card-body p-0">
                                            <table class="table">
                                                <thead>
                                                    <tr>
                                                        <th>Fotoğraf Adı</th>
                                                        <th>Fotoğraf Pozisyonu</th>
                                                        <th></th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    @foreach($film->fotograflar as $fotograf)
                                                        <tr>
                                                            <td>{{ $fotograf->resim_yolu  }}</td>
                                                            <td>{{ ucFirst($fotograf->pozisyon)  }}</td>
                                                            <td class="text-right py-0 align-middle">
                                                                <div class="btn-group btn-group-sm">
                                                                    <a href="{{ $fotograf->resim_yolu }}" target="_blank" class="btn btn-info"><i class="fas fa-eye"></i></a>
                                                                    <a href="{{ route('admin.filmler.resim.delete', $fotograf->id)  }}" class="btn btn-danger"><i class="fas fa-trash"></i></a>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    @endforeach
                                                </tbody>
                                            </table>
                                        </div>
                                        <!-- /.card-body -->
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="custom-file">
                                            <input type="file" name="kapak_foto" class="custom-file-input" id="kapak_foto">
                                            <label class="custom-file-label" for="customFile">Kapak Fotoğrafı</label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <div class="custom-file">
                                            <input type="file" name="galeri_foto[]" multiple class="custom-file-input" id="foto_galari">
                                            <label class="custom-file-label" for="customFile">Fotoğraf Galerisi</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="fAciklama">Film Açıklaması</label>
                                        <textarea name="aciklama" id="summernote">
                                            {{ $film->aciklama  }}
                                          </textarea>
                                    </div>
                                </div>
                                <!-- /.col-->
                            </div>

                            <button type="submit" class="btn btn-primary">Güncelle</button>
                        </form>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
@endsection


<!-- summernote -->
<link rel="stylesheet" href="/dist/plugins/summernote/summernote-bs4.min.css">
<!-- Select2 -->
<link rel="stylesheet" href="/dist/plugins/select2/css/select2.min.css">
<link rel="stylesheet" href="/dist/plugins/select2-bootstrap4-theme/select2-bootstrap4.min.css">

@section('scripts')
    <!-- Summernote -->
    <script src="/dist/plugins/summernote/summernote-bs4.min.js"></script>
    <!-- Select2 -->
    <script src="/dist/plugins/select2/js/select2.full.min.js"></script>

    <script>
        $(function () {
            $('#summernote').summernote();
            $('.select2').select2();
        })

        function salonlariGetir(obj)
        {
            var avmId = obj.value;

            $('#cSalon option').hide();
            $('#cSalon option[data-default="true"]').show();
            $('#cSalon option[data-avmid="'+ avmId +'"]').show();
        }
    </script>
@endsection
