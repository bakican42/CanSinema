<footer class="bd-footer mt-5">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 mb-3">
            <a class="d-inline-flex align-items-center mb-2 link-dark text-decoration-none" href="/" aria-label="Bootstrap">
                <img src="{{ asset('images/logo.png?v=1') }}" width="200">
            </a>
            <ul class="list-unstyled small text-muted">
                <li class="mb-2">Tüm haklar saklıdır</li>
                <li class="mb-2">Copyright 2021 @BakiCan</li>
            </ul>
            </div>
            <div class="col-6 col-lg-2 offset-lg-1 mb-3">
            <h5>Links</h5>
            <ul class="list-unstyled">
                <li class="mb-2"><a href="/">Home</a></li>
            </ul>
            </div>
            <div class="col-6 col-lg-2 mb-3">
            <h5>Guides</h5>
            <ul class="list-unstyled">
                <li class="mb-2"><a href="/docs/5.0/getting-started/">Getting started</a></li>
            </ul>
            </div>
            <div class="col-6 col-lg-2 mb-3">
            <h5>Projects</h5>
            <ul class="list-unstyled">
                <li class="mb-2"><a href="https://github.com/twbs/bootstrap">Bootstrap 5</a></li>
            </ul>
            </div>
            <div class="col-6 col-lg-2 mb-3">
            <h5>Community</h5>
            <ul class="list-unstyled">
                <li class="mb-2"><a href="https://github.com/twbs/bootstrap/issues">Issues</a></li>
            </ul>
            </div>
        </div>
    </div>
</footer>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/11.0.17/sweetalert2.min.js"></script>
@yield('scripts')
