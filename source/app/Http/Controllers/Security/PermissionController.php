<?php

namespace App\Http\Controllers\Security;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Helpers\PermisoOpcion;
use App\Exceptions\NotAuthorizedException;

class PermissionController extends Controller
{
    public function index()
    {
        if(Auth::user()->getPermiso(PermisoOpcion::PERMISO_LISTAR))
        {
            return view('permissions.index');
        } else {
            throw new NotAuthorizedException();
        }
    }
}
