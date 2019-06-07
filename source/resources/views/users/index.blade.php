@extends('layouts.admin')

@section('content')
<div class="page-content">
    <div class="page-head">
        <div class="page-title">
            <h1>Lista de usuarios <small>{{ $users->count() }} usuarios</small></h1>
        </div>

    </div>
    <div class="row">
        <div class="col-md-12">
            @include('partials.alerts')
            <div class="portlet box blue">
                <div class="portlet-title">
                    <div class="caption">LISTA DE USUARIOS</div>
                    <div class="actions">
                        <a href="{{ route('users.create') }}" class="btn btn-sm default"><i class="icon-plus"></i> Crear</a>
                    </div>
                </div>
                <div class="portlet-body">
                    <div class="table-responsive">
                        <table class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>Usuario</th>
                                    <th>E-Mail</th>
                                    <th>Rol</th>
                                    <th>Propietario</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($users as $item)
                                <tr>
                                    <td>{{ $item->usu_user }}</td>
                                    <td>{{ $item->usu_email }}</td>
                                    <td>{{ $item->rol->rol_nombre }}</td>
                                    <td>{{ $item->persona->per_apepat }} {{ $item->persona->per_apemat }}, {{ $item->persona->per_nombres }}</td>
                                    <td>
                                        <div class="btn-group btn-group-xs">
                                            <a title="Editar" class="btn btn-xs blue" href="{{ route('users.edit', ['id' => $item->usu_id]) }}"><i class="icon-pencil"></i></a>
                                            @if ($asignedPermission)
                                            <a title="Asignar permisos" class="btn btn-xs green" href="{{ route('permissions.asigned.index', ['user_id' => $item->usu_id]) }}"><i class="icon-lock"></i></a>
                                            @endif
                                            {{--<a class="btn btn-xs" href="#"><i class="icon-magnifier"></i></a>--}}
                                            {{--<a title="eliminar" class="btn btn-xs red" href="#"><i class="icon-trash"></i></a>--}}
                                        </div>
                                    </td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>  
                    <div class="form-actions">
                        {!! $users->links() !!}
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection