@extends('layouts.admin')

@section('styles-links')
<link rel="stylesheet" href="{{ asset('assets/admin/pages/css/error.css') }}">
@endsection

@section('content')
<div class="page-content">
    <div class="row">
        <div class="col-md-12 page-404">
            <div class="number">201</div>
            <div class="details">
                <h3>Ops! Página no autorizada</h3>
                <p>No tiene permiso para acceder a esta página, solicite el permiso al admnistrador.</p>
                <p>{{ $exception->getMessage() }}</p>
            </div>
        </div>
    </div>
</div>
@endsection