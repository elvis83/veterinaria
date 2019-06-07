<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Veterinaria') }}</title>

    <!-- Scripts -->
    {{--<script src="{{ asset('js/app.js') }}" defer></script>--}}

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet">

    <!-- Styles -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700&subset=all">
    <link rel="stylesheet" href="{{ asset('assets/global/plugins/font-awesome/css/font-awesome.min.css')}}">
    <link href="{{ asset('assets/global/plugins/simple-line-icons/simple-line-icons.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/global/plugins/bootstrap/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/global/plugins/uniform/css/uniform.default.css') }}" rel="stylesheet">
    
    <link href="{{ asset('assets/global/plugins/select2/select2.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/pages/css/login3.css') }}" rel="stylesheet">
    
    <link href="{{ asset('assets/global/css/components-md.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/global/css/plugins-md.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/layout/css/layout.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/layout/css/themes/default.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/layout/css/custom.css') }}" rel="stylesheet">
    
</head>
<body class="page-md login">
    
    <div class="logo">

    </div>
    
    <div class="menu-toggler sidebar-toggler"></div>

    @yield('content')

    <div class="copyright">2019 © {{ config('app.name', 'Veterinaria') }}.</div>

    <script src="{{ asset('assets/global/plugins/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery-migrate.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery.blockui.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/uniform/jquery.uniform.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery.cokie.min.js') }}"></script>

    <script src="{{ asset('assets/global/plugins/jquery-validation/js/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/select2/select2.min.js') }}"></script>

    <script src="{{ asset('assets/global/scripts/metronic.js') }}"></script>
    <script src="{{ asset('assets/admin/layout/scripts/layout.js') }}"></script>
    
    @yield('scripts')

    <script>
    jQuery(document).ready(function(){
        Metronic.init();
        Layout.init();
    });
    </script>
</body>
</html>
