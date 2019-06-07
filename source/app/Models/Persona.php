<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Persona extends Model
{
    protected $table = 'res_persona';
    protected $primaryKey = 'per_id';

    public $timestamps = false;

    protected $fillable = [
        'per_apepat',
        'per_apemat',
        'per_nombres',
        'per_dir',
        'per_tipodoc',
        'per_nrodoc',
        'per_fecnac',
        'per_sexo', 
        'per_tel',
        'per_cel',
        'per_ecivil'
    ];
}
