@extends('layouts.admin')


@section('content')
<div class="page-content">
    <div class="page-head">
        <div class="page-title">
            <h1>Permisos <small>del Sistema</small></h1>
        </div>
    </div>
    <div class="portlet box blue">
        <div class="portlet-title">
            <div class="caption">Lista de permisos</div>
            <div class="actions">
                <a href="{{ route('permissions.create') }}" class="btn btn-sm default"><i class="icon-plus"></i> Crear</a>
            </div>
        </div>
        <div class="portlet-body">
            <div class="table-responsive">
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Descripcion</th>
                            <th>Rol</th>
                            <th>Estado</th>
                            <th>Valor por defecto</th>
                            <th>Aciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($permissions as $item)
                        <tr>
                            <td>{{ $item->perm_nombre }}</td>
                            <td>{{ $item->perm_descripcion }}</td>
                            <td>{{ $item->rol->rol_nombre }}</td>
                            <td>{!! $item->perm_estado == 1 ? '<i class="icon-check"></i>' : '<i class="icon-close"></i>' !!}</td>
                            <td>{{ $item->default_value }}</td>
                            <td></td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
            <div class="form-actions">
                {!! $permissions->links() !!}
            </div>
        </div>
    </div>
</div>
@endsection