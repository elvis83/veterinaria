<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Medico extends Model
{
    protected $primaryKey = 'med_id';

    protected $table = 'res_medico';

    protected $fillable = [
        'med_estado',
        'per_id',
        'esp_id',
    ];

    public function persona() {
        return $this->belongsTo(Persona::class, 'per_id','per_id');
    }
}
