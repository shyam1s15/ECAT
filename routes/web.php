<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});

Route::get('/sample', function () {
    // return Storage::down('assets/');//('storage/assets/sample.pdf');
    // return response()->download('storage/assets/sample.pdf', 'jakas.pdf');
    return asset('storage/assets/sample.pdf');//('assets/sample.pdf');

});