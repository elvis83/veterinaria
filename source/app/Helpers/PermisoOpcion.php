<?php

namespace App\Helpers;

class PermisoOpcion {
    /**
     * Opcion módulo USUARIO
     */
    public const USUARIO_LISTAR = 'users.list';
    public const USUARIO_CREAR = 'users.insert';
    public const USUARIO_EDITAR = 'users.update';
    public const USUARIO_ELIMINAR = 'users.delete';
    public const USUARIO_PASSWORD_RESSET = 'users.password.reset';

    public const PERMISO_ASIGNAR = 'permissions.asigned';
    public const PERMISO_LISTAR = 'permissions.list';
}