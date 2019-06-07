<?php

namespace App\Http\Controllers\Security;

use Exception;
use App\User;
use Illuminate\Http\Request;
use App\Helpers\PermisoOpcion;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Exceptions\NotAuthorizedException;
use App\Models\Permiso;
use Illuminate\Support\Facades\DB;
use Carbon\Carbon;

class AsignedPermissionsController extends Controller
{
    public function index($user_id) 
    {
        if(Auth::user()->getPermiso(PermisoOpcion::PERMISO_ASIGNAR))
        {
            $user = User::with('permisos')->where('usu_id', $user_id)->first();
            $permissions = Permiso::where('perm_estado', '1')
                ->where('rol_id', $user->rol_id)->get();
            if($user->permisos()->count() > 0) {
                $permissions = $permissions->merge($user->permisos);
            }
            return view('permissions.asigned.index', compact('user', 'permissions'));
        } else {
            throw new NotAuthorizedException();
        }
    }

    public function store($user_id, Request $request) {
        try 
        {
            $user = User::where('usu_id', $user_id)->first();
            $permissions = Permiso::where('perm_estado', '1')
                ->where('rol_id', $user->rol_id)->get();
            foreach ($permissions as $permission) {
                $exits = DB::table('seg_permiso_usuario')->where('usuario_id', '=', $user_id)
                    ->where('permiso_id', $permission->permiso_id)->first();
                
                $value = $permission->default_value;
                $key = str_replace('.', '_', $permission->perm_nombre);

                if($exits)
                {
                    if(!empty($request->input($key)))
                    {
                        $value = $request->input($key) == 'on';
                    }

                    DB::table('seg_permiso_usuario')->where('usuario_permiso_id', $exits->usuario_permiso_id)
                    ->update([
                        'valor' =>  $value
                    ]);
                } else {
                    DB::table('seg_permiso_usuario')->insert([
                        'permiso_id' => $permission->permiso_id,
                        'usuario_id' => $user_id,
                        'valor' => $value,
                        'fecha_actualizado' => Carbon::now()
                    ]);
                }
            }
            return redirect()->route('permissions.asigned.index', ['user_id'=> $user_id])->with('message.success', 'Se han actualizado los permisos del usuario.');
        } catch(Exception $ex) 
        {
            return back()->with('message.danger', $ex->getMessage());
        }
    }
}
