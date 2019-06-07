<?php

namespace App;

use App\Models\Rol;
use App\Models\Permiso;
use App\Models\Persona;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Auth\Passwords\CanResetPassword;
use Illuminate\Contracts\Auth\Authenticatable as AuthenticatableContract;
use Illuminate\Contracts\Auth\CanResetPassword as CanResetPasswordContract;

class User extends Model implements AuthenticatableContract, CanResetPasswordContract
{
    use Notifiable;
    use CanResetPassword;

    protected $primaryKey = 'usu_id';
    protected $table = 'res_usuario';

    public $timestamps = false;

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'usu_user',
        'med_id',
        'usu_email',
        'usu_clave',
        'usu_fecreg',
        'usu_estado',
        'rol_id',
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'usu_clave', 'remember_token',
    ];

    /**
     * The attributes that should be cast to native types.
     *
     * @var array
     */
    protected $casts = [
        'email_verified_at' => 'datetime',
    ];

    /**
     * Get the name of the unique identifier for the user.
     *
     * @return string
     */
    public function getAuthIdentifierName()
    {
        return 'usu_user';
    }

    /**
     * Get the unique identifier for the user.
     *
     * @return mixed
     */
    public function getAuthIdentifier()
    {
        return $this->{$this->getAuthIdentifierName()};
    }

    /**
     * Get the password for the user.
     *
     * @return string
     */
    public function getAuthPassword()
    {
        return $this->usu_clave;
    }

    /**
     * Get the token value for the "remember me" session.
     *
     * @return string
     */
    public function getRememberToken()
    {
        return $this->{$this->getRememberTokenName()};
    }

    /**
     * Set the token value for the "remember me" session.
     *
     * @param  string  $value
     * @return void
     */
    public function setRememberToken($value)
    {
        $this->remember_token = $value;
    }

    /**
     * Get the column name for the "remember me" token.
     *
     * @return string
     */
    public function getRememberTokenName()
    {
        return 'remember_token';
    }

    public function getEmailForPasswordReset(){
        return $this->usu_email;
    }

    public function rol()
    {
        return $this->belongsTo(Rol::class, 'rol_id', 'rol_id');
    }

    public function persona()
    {
        return $this->belongsTo(Persona::class, 'med_id', 'per_id');
    }

    public function permisos()
    {
        return $this->belongsToMany(Permiso::class, 'seg_permiso_usuario', 
        'usuario_id', 'permiso_id', 'usu_id', 'permiso_id')->withPivot(['valor']);
    }

    public function getPermiso($nombre)
    {
        $rs = $this->permisos()->where('perm_nombre', $nombre)->first();
        $state = 0;
        if($rs) {
            $state = $rs->relations['pivot']->valor;
            
        } else {
            $rs = Permiso::where('perm_nombre', $nombre)->first();
            if($rs) 
            {
                $state = $rs->default_value;
            }
        }
        return $state == 1;;
    }
}
