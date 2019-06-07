@extends('layouts.admin')

@section('content')
<div class="page-content">
    <div class="page-head">
        <div class="page-title">
            <h1>Registro de usuario</h1>
        </div>
    </div>
    <div class="portlet box blue">
        <div class="portlet-title">
            <div class="caption">Crear usuario</div>
        </div>
        <div class="portlet-body form">
            <form method="POST" action="{{ route('users.update', ['id'=> $user->usu_id]) }}">
                @csrf
                @method('PUT')
                <div class="form-body">
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="usu_user" class="control-label">Usuario</label>
                                <div class="input-icon">
                                    <i class="icon-user"></i>
                                    <input required="required" value="{{ old('usu_user', $user->usu_user) }}" id="usu_user" name="usu_user" type="text" class="form-control" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-8">
                            <div class="form-group">
                                <label for="user_email" class="control-label">E-Mail</label>
                                <div class="input-icon">
                                    <i class="icon-envelope"></i>
                                    <input required="required" value="{{ old('usu_email', $user->usu_email) }}" class="form-control" type="email" name="usu_email" id="usu_email" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="med_id" class="control-label">Persona</label>
                        <select required="required" name="med_id" id="med_id" class="form-control select2me">
                            <option value="">-- SELECCIONE --</option>
                            @foreach ($persons as $item)
                            <option {{ old('med_id', $user->med_id) == ''.$item->per_id ? 'selected' : '' }} value="{{ $item->per_id }}">{{ $item->per_apepat }} {{ $item->per_apemat }}, {{ $item->per_nombres }}</option>
                            @endforeach
                        </select>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="usu_estado" class="control-label">Estado</label>
                                <select name="usu_estado" id="usu_estado" class="form-control select2me">
                                    <option {{ old('usu_estado', $user->usu_estado) == 'A' ? 'selected' : '' }} value="A">Activo</option>
                                    <option {{ old('usu_estado', $user->usu_estado) == 'B' ? 'selected' : '' }} value="B">Bloqueado</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="rol_id" class="control">Rol</label>
                                <select required="required" name="rol_id" id="rol_id" class="form-control select2me">
                                    <option value="">-- SELECCIONE --</option>
                                    @foreach ($roles as $item)
                                    <option {{ old('rol_id', $user->rol_id) == $item->rol_id ? 'selected' : '' }} value="{{ $item->rol_id }}">{{ $item->rol_nombre }}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="form-group">
                                <label for="usu_clave" class="control-label">Contraseña</label>
                                <div class="input-icon">
                                    <i class="icon-lock"></i>
                                    <input value="{{ old('usu_clave') }}" id="usu_clave" name="usu_clave" type="password" class="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="form-actions">
                    <button class="btn blue">guardar</button>
                </div>
            </form>
        </div>
    </div>
</div>
@endsection