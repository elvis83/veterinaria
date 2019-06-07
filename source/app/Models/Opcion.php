<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Opcion extends Model
{
    protected $table = 'seg_opcion';
    protected $primaryKey = 'opcion_id';

    public $timestamps = false;

    protected $fillable = [
        'icono',
        'descripcion',
        'label',
        'type',
        'route',
        'parametros',
        'target',
        'estado',
        'rol_id',
        'opcion_parent_id',
        'permiso_id',
        'es_padre',
        'es_hijo'
    ];

    public function rol()
    {
        return $this->belongsTo(Rol::class, 'rol_id', 'rol_id');
    }

    public function permiso()
    {
        return $this->belongsTo(Permiso::class, 'permiso_id', 'permiso_id');
    }

    public function childs()
    {
        return $this->hasMany(Opcion::class, 'opcion_parent_id', 'opcion_id');
    }

    public function scopeGetAllByRoleID($query, $role_id)
    {
        return $query->with('childs')->where('rol_id', $role_id);
    }

    public function scopeGetByRoleID($query, $role_id)
    {
        return $query->with('childs')->where('es_padre', '1')->where('rol_id', $role_id);
    }
}
