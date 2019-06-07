<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Permiso extends Model
{
    protected $primaryKey = 'permiso_id';
    protected $table = 'seg_permiso';

    public $timestamps = false;

    protected $fillable = [
        'perm_nombre',
        'perm_descripcion',
        'rol_id',
        'perm_estado',
        'default_value'
    ];

    public function rol()
    {
        return $this->belongsTo(Rol::class, 'rol_id', 'rol_id');
    }
}
