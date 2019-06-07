@extends('layouts.admin')

@section('content')
<div class="page-content">
<div class="page-head">
    <div class="page-title">
        <h1>Asignación de permisos</h1>
    </div>
</div>
@include('partials.alerts')
<div class="portlet box blue">
    <div class="portlet-title">
        <div class="caption">Permisos de <strong>{{ $user->usu_user }}</strong></div>
    </div>
    <div class="portlet-body">
        <form method="POST" action="{{ route('permissions.asigned.store', ['user_id'=> $user->usu_id]) }}">
            @csrf
            <div class="form-body">
                <div class="row">
                    @foreach ($permissions as $item)
                        <div class="col-md-6 col-lg-4">
                            <div class="md-checkbox-inline">
                                <div class="md-checkbox">
                                    <input {{ $item->value == 1 ? 'checked' : '' }} class="md-check" type="checkbox" name="{{ $item->perm_nombre }}" id="{{ $item->perm_nombre }}">
                                    <label for="{{ $item->perm_nombre }}"><span></span><span class="check"></span><span class="box"></span>{{ $item->perm_descripcion }}</label>
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
            <div class="form-actions">
                <button type="submit" class="btn blue">Guardar</button>
            </div>
        </form>
    </div>
</div>
</div>
@endsection