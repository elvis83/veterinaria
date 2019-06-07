<?php

namespace App\Http\Controllers\Security;

use Illuminate\Http\Request;
use App\Helpers\PermisoOpcion;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Exceptions\NotAuthorizedException;

class AsignedPermissionsController extends Controller
{
    public function index($user_id) {
        if(Auth::user()->getPermiso(PermisoOpcion::PERMISO_ASIGNAR))
        {
            return view('permissions.asigned.index');
        } else {
            throw new NotAuthorizedException();
        }
    }

    public function store($user_id, Request $request) {

    }

    public function update($user_id, Request $request) {

    }
}
