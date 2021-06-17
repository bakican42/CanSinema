@extends('admin.layout.app')

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title">Yorumlar Listesi</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0">
                        <table class="table table-head-fixed text-nowrap">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Film</th>
                                <th>Kullanıcı</th>
                                <th>Yorum</th>
                                <th>Durumu</th>
                                <th>Oluşturulma Tarihi</th>
                                <th>Güncellenme Tarihi</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            @if(!isset($yorumlar) ||  (isset($yorumlar) && $yorumlar->isEmpty()))
                                <tr><td colspan="8" class="text-center">Henüz kayıtlı kullanıcı bulunmamaktadır.</td></tr>
                            @else
                                @foreach($yorumlar as $yorum)
                                    <tr>
                                        <td>{{ $yorum->id  }}</td>
                                        <td>{{ $yorum->film->adi  }}</td>
                                        <td>{{ $yorum->kullanici->tam_ad  }}</td>
                                        <td>{{ $yorum->yorum  }}</td>
                                        <td>
                                            <span class="text text-{{$yorum->aktif_class}}">
                                                {{ $yorum->aktif_text  }}
                                            </span>
                                        </td>
                                        <td>{{ $yorum->created_at }}</td>
                                        <td>{{ $yorum->updated_at }}</td>
                                        <td>

                                            @if($yorum->aktif_mi == 0 || $yorum->aktif_mi == 2)
                                                <a class="btn btn-success btn-sm" href="{{ route('admin.yorumlar.durum', ['id' => $yorum->id, 'durum' => 1])  }}">
                                                    <i class="fas fa-edit"></i> Aktif Et
                                                </a>
                                            @elseif($yorum->aktif_mi == 1)
                                                <a class="btn btn-warning btn-sm text-white" href="{{ route('admin.yorumlar.durum', ['id' => $yorum->id, 'durum' => 2])  }}">
                                                    <i class="fas fa-edit"></i> Pasif Et
                                                </a>
                                            @endif


                                            <a href="{{  route('admin.yorumlar.delete', $yorum->id)  }}" class="btn btn-danger btn-sm">
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
                        {{ $yorumlar->links()  }}
                    </div>
                </div>
                <!-- /.card -->
            </div>
        </div>
    </div>
@endsection
