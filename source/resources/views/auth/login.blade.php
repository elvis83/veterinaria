@extends('layouts.app')

@section('content')
<div class="content">
    <form class="login-form" method="POST" action="{{ route('login') }}">
        @csrf
        <h3 class="form-title">Inicia sesión con tu cuenta</h3>
        @error('email')
        <div class="alert alert-danger">
            <button class="close" data-close="alert"></button>
            <span>{{ $message }}</span>
        </div>
        @enderror
        @error('password')
        <div class="alert alert-danger">
            <button class="close" data-close="alert"></button>
            <span>{{ $message }}</span>
        </div>
        @enderror
        <div class="form-group">
            <label class="control-label">Usuario</label>
            <div class="input-icon">
                <i class="icon-envelope"></i>
                <input value="{{ old('username') }}" autocomplete="off" name="username" type="text" class="form-control @error('username') is-invalid @enderror"/>
            </div>
        </div>
        <div class="form-group">
            <label class="control-label">Contraseña</label>
            <div class="input-icon">
                <i class="icon-lock"></i>
                <input autocomplete="off" value="{{ old('password') }}" id="password" name="password" type="password" class="form-control @error('password') is-invalid @enderror" />
            </div>
        </div>
        <div class="form-actions">
            <div class="row">
                <div class="col-xs-7">
                    <div class="md-checkbox-inline">
                        <div class="md-checkbox">
                            <input class="md-check" {{ old('remember') ? 'checked' : '' }} type="checkbox" name="remember" id="remember"/>
                            <label for="remember"><span></span><span class="check"></span><span class="box"></span>Recordarme</label>
                        </div>
                    </div>
                </div>
                <div class="col-xs-5">
                    <button class="btn btn-success">Ingresar <i class="m-icon-swapright m-icon-white"></i></button>
                </div>
            </div>
        </div>
        <div class="forget-password">
            <a href="{{ route('password.request') }}">¿Olvidaste Contraseña?</a>
        </div>
    </form>
</div>
@endsection
