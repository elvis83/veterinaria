@extends('layouts.app')

@section('content')
<div class="content">
    <form method="POST" action="{{ route('password.email') }}" class="login-form">
        @csrf
        <h3 class="form-title">Cambiar contraseña</h3>
        @if (session('status'))
            <div class="alert alert-success" role="alert">
                <button class="close" data-close="alert"></button>
                {{ session('status') }}
            </div>
        @endif
        <div class="form-group">
            <label class="control-label">E-Mail</label>
            <div class="input-icon">
                <i class="icon-envelope"></i>
                <input autocomplete="off" name="email" type="email" class="form-control @error('email') is-invalid @enderror" />
            </div>
        </div>
        <div class="form-actions">
            <button type="submit" class="btn btn-primary">
                {{ __('Enviar') }}
            </button>
        </div>
        <div class="forget-password">
            <a href="{{ url('/') }}">Inicio</a>
        </div>
    </form>
</div>
@endsection
