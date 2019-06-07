<?php

namespace App\Http\Controllers\Security;

use App\User;
use Illuminate\Http\Request;
use App\Helpers\PermisoOpcion;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Exceptions\NotAuthorizedException;
use App\Models\Persona;
use App\Models\Rol;
use Exception;
use Carbon\Carbon;

class UserController extends Controller
{
    public function index() 
    {
        if(Auth::user()->getPermiso(PermisoOpcion::USUARIO_LISTAR))
        {
            $users = User::with('rol')->with('persona')->paginate();
            return view('users.index', compact('users'));
        } else {
            throw new NotAuthorizedException();
        }
    }

    public function create() {
        if(Auth::user()->getPermiso(PermisoOpcion::USUARIO_CREAR)) {
            $persons = Persona::get();
            $roles = Rol::where('rol_estado', '1')->get();
            return view('users.create', compact('persons', 'roles'));
        } else {
            throw new NotAuthorizedException();
        }
    }

    public function edit($id) {
        if(Auth::user()->getPermiso(PermisoOpcion::USUARIO_EDITAR)) {
            $user = User::where('usu_id', $id)->first();
            $persons = Persona::get();
            $roles = Rol::where('rol_estado', '1')->get();
            return view('users.edit', compact('user', 'persons', 'roles'));
        } else {
            throw new NotAuthorizedException();
        }
    }

    public function show() {
        return view('users.show');
    }

    public function store(Request $request) {
        try {
            
            User::create([
                'usu_email' => $request->input('usu_email'),
                'usu_user' => $request->input('usu_user'),
                'usu_estado' => $request->input('usu_estado'),
                'med_id' => $request->input('med_id'),
                'rol_id' => $request->input('rol_id'),
                'usu_fecreg' => Carbon::now(),
                
            ]);

            return redirect()->route('users.index')->with('message.success', 'Se ha guardado correctamente el registro.');
        } catch(Exception $ex){
            return back()->with('message.danger', $ex->getMessage());
        }
    }

    public function update($id, Request $request) {
        try {
            $user = User::where('usu_id', $id)->first();
            $user->update([
                'usu_email' => $request->input('usu_email'),
                'usu_user' => $request->input('usu_user'),
                'usu_estado' => $request->input('usu_estado'),
                'med_id' => $request->input('med_id'),
                'rol_id' => $request->input('rol_id')
            ]);
            return redirect()->route('users.index')->with('message.success', 'Se ha actualizado correctamente el registro.');
        } catch(Exception $ex){
            return back()->with('message.danger', $ex->getMessage());
        }
    }
}
