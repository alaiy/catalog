<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/','CategoriesController@index');
Route::get('home','CategoriesController@index');
Route::get('categories/{id}', 'CategoriesController@index');
Route::get('items/{id}', 'ItemsController@index');
Route::controllers([
	'auth' => 'Auth\AuthController',
	'password' => 'Auth\PasswordController',
]);
Route::post('comments/create', array('before' => 'csrf', 'uses' => 'CommentsController@add'));
