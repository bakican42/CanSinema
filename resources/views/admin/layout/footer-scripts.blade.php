<script src="/dist/plugins/jquery/jquery.min.js"></script>
<script src="/dist/plugins/jquery-ui/jquery-ui.min.js"></script>
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>
<script src="/dist/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/dist/plugins/chart.js/Chart.min.js"></script>
<script src="/dist/plugins/sparklines/sparkline.js"></script>
<script src="/dist/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="/dist/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<script src="/dist/plugins/jquery-knob/jquery.knob.min.js"></script>
<script src="/dist/plugins/moment/moment.min.js"></script>
<script src="/dist/plugins/daterangepicker/daterangepicker.js"></script>
<script src="/dist/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<script src="/dist/plugins/summernote/summernote-bs4.min.js"></script>
<script src="/dist/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<script src="/dist/dist/js/adminlte.js"></script>
<script src="/dist/dist/js/demo.js"></script>
<script src="/dist/dist/js/pages/dashboard.js"></script>
<script src="/dist/plugins/sweetalert2/sweetalert2.min.js"></script>

<script type="text/javascript">

    function notification(status, message)
    {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000
        });

        Toast.fire({
            icon: status,
            title: message
        })
    }
</script>

@yield('scripts')
@if (session('mesaj'))
    <script type="text/javascript">
        var status =  '{{ session('status') ? 'success' : 'error'  }}';
        var message = '{{ session('mesaj')  }}'
        notification(status, message);
    </script>
@endif
