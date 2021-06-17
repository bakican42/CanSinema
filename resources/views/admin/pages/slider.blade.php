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
                        <h3 class="card-title">Slider Listesi</h3>
                        <div class="card-tools">
                            <a href="{{ route('admin.slider.create')  }}" class="btn btn-success btn-sm">
                                <i class="fas fa-plus"></i> Yeni Slider Ekle
                            </a>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0" >
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Film Adı</th>
                                <th>Sırası</th>
                                <th>Durumu</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            @if(!isset($sliders) ||  (isset($sliders) && $sliders->isEmpty()))
                                <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                            @else
                                @foreach($sliders as $slider)
                                    <tr>
                                        <td>{{ $slider->id }}</td>
                                        <td>{{ $slider->film->adi }}</td>
                                        <td>{{ $slider->sira }}</td>
                                        <td>{{ $slider->aktif_mi ? 'Aktif' : 'Pasif' }}</td>
                                        <td>
                                            <a href="{{ route('admin.slider.show', $slider->id) }}" class="btn btn-success btn-sm">
                                                <i class="fas fa-edit"></i> Düzenle
                                            </a>
                                            <a href="{{  route('admin.slider.delete', $slider->id)  }}" class="btn btn-danger btn-sm">
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
                        {{ $sliders->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
@endsection
