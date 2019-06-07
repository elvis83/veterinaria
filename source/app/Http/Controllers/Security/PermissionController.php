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

    public function create(){
        if(Auth::user()->getPermiso(PermisoOpcion::PERMISO_CREAR))
        {
            return view('permissions.create');
        } else {
            throw new NotAuthorizedException();
        }
    }

    public function edit($id) {
        if(Auth::user()->getPermiso(PermisoOpcion::PERMISO_CREAR))
        {
            $permission = Permiso::where('permiso_id', $id)->first();
            return view('permissions.create', compact('permission'));
        } else {
            throw new NotAuthorizedException();
        }
    }

    public function store(Request $request) {

    }

    public function update($id, Request $request) {

    }
}
