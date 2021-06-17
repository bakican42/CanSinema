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
                        <h3 class="card-title">Yeni Slider Ekle</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive">
                        <form action="{{ route('admin.slider.store')  }}" method="POST" enctype="multipart/form-data">
                            @csrf

                            <div class="row">
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="fFilmler">Filmler</label>
                                        <select name="film_id" class="form-control">
                                            <option>Seçiniz</option>
                                            @if(!$filmler->isEmpty())
                                                @foreach($filmler as $film)
                                                    <option value="{{ $film->id  }}" >{{ $film->adi }}</option>
                                                @endforeach
                                            @endif
                                        </select>
                                    </div>
                                </div>
                                <div class="col-sm-4">
                                    <div class="form-group">
                                        <label for="sSira">Sıra</label>
                                        <input type="number" name="sira"class="form-control" value="1" id="sSira">
                                    </div>
                                </div>
                            </div>


                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <div class="custom-file">
                                            <input type="file" name="slider" class="custom-file-input" id="slider">
                                            <label class="custom-file-label" for="customFile">Slider Fotoğrafı</label>
                                        </div>
                                    </div>
                                </div>
                            </div>

                            <button type="submit" class="btn btn-primary">Ekle</button>
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
