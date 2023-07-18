<?php

use App\Http\Controllers\TodoController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\IdController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});


Route::post('create-user', [IdController::class,'store']);


Route::get('read-user', [IdController::class,'read']);
Route::get('edit-user/{id}', [IdController::class,'edit']);
Route::post('update-user/{id}', [IdController::class,'update']);
Route::post('delete-user/{id}', [IdController::class,'delete']);

