<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Rol extends Model
{
    protected $primaryKey = 'rol_id';
    protected $table = 'seg_rol';

    public $timestamps = false;

    protected $fillable = [
        'rol_nombre',
        'rol_estado',
    ];
}
