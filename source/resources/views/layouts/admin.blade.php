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
    
    @yield('styles-links')

    <link href="{{ asset('assets/global/css/components-md.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/global/css/plugins-md.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/layout4/css/layout.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/layout4/css/themes/light.css') }}" rel="stylesheet">
    <link href="{{ asset('assets/admin/layout4/css/custom.css') }}" rel="stylesheet">
    @yield('styles')
</head>
<body class="page-md page-header-fixed page-sidebar-closed-hide-logo ">
    
    <div class="page-header md-shadow-z-1-i navbar navbar-fixed-top">
        <div class="page-header-inner">
            <div class="page-logo">
                    <a href="{{ url('/') }}">
                        <img src="/assets/admin/layout4/img/logo-light.png" alt="logo" class="logo-default">
                    </a>
                <div class="menu-toggler sidebar-toggler">
                    <!-- DOC: Remove the above "hide" to enable the sidebar toggler button on header -->
                </div>
            </div>
            <a href="javascript: void(0);" class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse"></a>
            <div class="page-top">
                <div class="top-menu">
                    <ul class="nav navbar-nav pull-right">
                        <li class="dropdown dropdown-user dropdown-dark">
                            <a href="javascript: void(0);" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
                                <span class="username username-hide-on-mobile">{{ Auth::check() ? Auth::user()->usu_user : 'Usuario' }}</span>
                                <!-- DOC: Do not remove below empty space(&nbsp;) as its purposely used -->
                                <img alt="" class="img-circle" src="{{ asset('assets/admin/layout/img/avatar.png') }}">
                            </a>
                            <ul class="dropdown-menu dropdown-menu-default">
                                <li>
                                    <a href="extra_profile.html">
                                    <i class="icon-user"></i> Mi Perfil</a>
                                </li>
                                <li>
                                    <a href="page_calendar.html">
                                    <i class="icon-calendar"></i> My Calendar </a>
                                </li>
                                <li>
                                    <a href="inbox.html">
                                    <i class="icon-envelope-open"></i> My Inbox <span class="badge badge-danger">
                                    3 </span>
                                    </a>
                                </li>
                                <li>
                                    <a href="page_todo.html">
                                    <i class="icon-rocket"></i> My Tasks <span class="badge badge-success">
                                    7 </span>
                                    </a>
                                </li>
                                <li class="divider">
                                </li>
                                <li>
                                    <a href="extra_lock.html">
                                    <i class="icon-lock"></i> Lock Screen </a>
                                </li>
                                <li>
                                    <a href="javascript: $('#frm-logout').submit();"><i class="icon-key"></i> Cerrar sesión</a>
                                    <form id="frm-logout" action="{{ url('logout') }}" method="post">
                                    @csrf
                                    </form>
                                </li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="page-container">
        <div class="page-sidebar-wrapper">
            <div class="page-sidebar md-shadow-z-2-i navbar-collapse collapse">

                <ul class="page-sidebar-menu " data-keep-expanded="false" data-auto-scroll="true" data-slide-speed="200">
                    <li class="start ">
                        <a href="{{ url('/') }}">
                            <i class="icon-home"></i>
                            <span class="title">Dashboard</span>
                        </a>
                    </li>
                    {!! Sidebar::render() !!}
                </ul>

            </div>
        </div>
        <div class="page-content-wrapper">
            @yield('content')
        </div>
    </div>

    <div class="page-footer">
        <div class="page-footer-inner">
            2014 &copy; Metronic by keenthemes.
        </div>
        <div class="scroll-to-top">
            <i class="icon-arrow-up"></i>
        </div>
    </div>

    <script src="{{ asset('assets/global/plugins/jquery.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery-migrate.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery-ui/jquery-ui.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/bootstrap/js/bootstrap.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/bootstrap-hover-dropdown/bootstrap-hover-dropdown.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery-slimscroll/jquery.slimscroll.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery.blockui.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/uniform/jquery.uniform.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/jquery.cokie.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/bootstrap-switch/js/bootstrap-switch.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/moment.min.js') }}"></script>

    <script src="{{ asset('assets/global/plugins/jquery-validation/js/jquery.validate.min.js') }}"></script>
    <script src="{{ asset('assets/global/plugins/select2/select2.min.js') }}"></script>

    <script src="{{ asset('assets/global/scripts/metronic.js') }}"></script>
    <script src="{{ asset('assets/admin/layout/scripts/layout.js') }}"></script>
    <script src="{{ asset('js/password.js') }}"></script>
    
    @yield('scripts-links')

    <script>
    jQuery(document).ready(function(){
        Metronic.init();
        Layout.init();
    });
    </script>

    @yield('scripts')
</body>
</html>
