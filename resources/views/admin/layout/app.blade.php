<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Can Sinema | Anasayfa</title>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
    <link rel="stylesheet" href="{{ asset('dist/plugins/fontawesome-free/css/all.min.css')  }}">
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="/dist/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="/dist/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <link rel="stylesheet" href="/dist/plugins/jqvmap/jqvmap.min.css">
    <link rel="stylesheet" href="/dist/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="/dist/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <link rel="stylesheet" href="/dist/plugins/daterangepicker/daterangepicker.css">
    <link rel="stylesheet" href="/dist/plugins/summernote/summernote-bs4.min.css">
    <link rel="stylesheet" href="/dist/plugins/sweetalert2-theme-bootstrap-4/bootstrap-4.min.css">
</head>

<body class="hold-transition sidebar-mini layout-fixed">

    <div class="wrapper">

        <!-- Preloader -->
        <div class="preloader flex-column justify-content-center align-items-center" style="display: none">
            <img class="animation__shake" src="/dist/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
        </div>

        @include('admin.layout.header')
        @include('admin.layout.navbar')

        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            @yield('content')
        </div>
        <!-- /.content-wrapper -->

        @include('admin.layout.footer')
    </div>
    <!-- ./wrapper -->
    @include('admin.layout.footer-scripts')
</body>
</html>
