<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Auth::routes();

Route::group([
    'middleware' => 'auth'
], function () {
    Route::get('/', ['uses' => 'HomeController@index']);
    Route::get('/home', 'HomeController@index')->name('home');

    Route::get('/users', 'Security\UserController@index')->name('users.index');
    Route::get('/users/create', 'Security\UserController@create')->name('users.create');
    Route::get('/users/{id}', 'Security\UserController@show')->name('users.show');
    Route::delete('/users/{id}', 'Security\UserController@destroy')->name('users.destroy');
    Route::get('/users/{id}/edit', 'Security\UserController@edit')->name('users.edit');
    Route::post('/users', 'Security\UserController@store')->name('users.store');
    Route::put('/users/{id}', 'Security\UserController@update')->name('users.update');

    Route::get('/permissions', 'Security\PermissionController@index')->name('permissions.index');
    Route::get('/permissions/{id}', 'Security\PermissionController@show')->name('permissions.show')->where(['id'=>'[0-9]+']);
    Route::get('/permissions/{id}/edit', 'Security\PermissionController@edit')->name('permissions.edit')->where(['id'=>'[0-9]+']);
    Route::get('/permissions/create', 'Security\PermissionController@create')->name('permissions.create');
    Route::delete('/permissions/{id}', 'Security\PermissionController@destroy')->name('permissions.destroy');
    
    Route::get('/permissions/asigned/{user_id}/', 'Security\AsignedPermissionsController@index')->name('permissions.asigned.index');
    Route::post('/permissions/asigned/{user_id}/', 'Security\AsignedPermissionsController@store')->name('permissions.asigned.store');
});
