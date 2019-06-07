<?php

namespace App\Http\Controllers\Security;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Helpers\PermisoOpcion;
use App\Exceptions\NotAuthorizedException;
use App\Models\Permiso;

class PermissionController extends Controller
{
    public function index()
    {
        if(Auth::user()->getPermiso(PermisoOpcion::PERMISO_LISTAR))
        {
            $permissions = Permiso::with('rol')->paginate();
            return view('permissions.index', compact('permissions'));
        } else {
            throw new NotAuthorizedException();
        }
    }
}
