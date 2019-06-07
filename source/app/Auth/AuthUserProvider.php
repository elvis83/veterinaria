<?php
namespace App\Auth;

use App\User;
use Illuminate\Contracts\Auth\Authenticatable;
use Illuminate\Contracts\Auth\UserProvider;

class AuthUserProvider implements UserProvider {
    /**
     * Retrieve a user by their unique identifier.
     *
     * @param  mixed  $identifier
     * @return \Illuminate\Contracts\Auth\Authenticatable|null
     */
    public function retrieveById($identifier)
    {
        $query = User::where('usu_user', '=', $identifier);
        if($query->count()>0) {
            $user = $query->first();
            return $user;
        }
        return null;
    }

    /**
     * Retrieve a user by their unique identifier and "remember me" token.
     *
     * @param  mixed   $identifier
     * @param  string  $token
     * @return \Illuminate\Contracts\Auth\Authenticatable|null
     */
    public function retrieveByToken($identifier, $token)
    {
        $query  = User::where('usu_user', '=', $identifier)->where('remember_token', '=', $token);
        if($query->count()>0) {
            $user = $query->first();
            return $user;
        }
        return null;
    }

    /**
     * Update the "remember me" token for the given user in storage.
     *
     * @param  \Illuminate\Contracts\Auth\Authenticatable  $user
     * @param  string  $token
     * @return void
     */
    public function updateRememberToken(Authenticatable $user, $token)
    {
        $user->setRememberToken($token);
        $user->save();
    }

    /**
     * Retrieve a user by the given credentials.
     *
     * @param  array  $credentials
     * @return \Illuminate\Contracts\Auth\Authenticatable|null
     */
    public function retrieveByCredentials(array $credentials)
    {
        if(!empty($credentials['username']))
        {
            $user = User::where('usu_user', '=', $credentials['username']);
        }
        if(!empty($credentials['email'])){
            $user = User::where('usu_email', '=', $credentials['email']);
        }
        if($user->count()>0) {
            return $user->first();
        }
        return null;
    }

    /**
     * Validate a user against the given credentials.
     *
     * @param  \Illuminate\Contracts\Auth\Authenticatable  $user
     * @param  array  $credentials
     * @return bool
     */
    public function validateCredentials(Authenticatable $user, array $credentials)
    {
        if($user->usu_user === $credentials['username'] && $user->getAuthPassword() === sha1($credentials['password'])) 
        {
            return true;
        } else {
            return false;
        }
    }
}