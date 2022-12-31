<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use App\Models\Internship;
use Illuminate\Support\Facades\Route;
use App\Models\User;
use App\Http\Controllers\AuthController;
use App\Http\Controllers\CustomAuthController;
use App\Http\Controllers\InternshipController;
use App\Http\Controllers\LoginController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\RegisterController;

Route::prefix('/')->group(function () {


    Route::get('/', [HomeController::class, 'index'])->name('index');
});



/**
 * Login Routes
 */

Route::group(['middleware' => ['guest']], function () {
    Route::get('/login', [LoginController::class, 'show'])->name('show');
    Route::post('/login', [LoginController::class, 'login'])->name('login');
});

Route::group(['middleware' => ['auth']], function () {
    Route::get('/register', [RegisterController::class, 'show'])->name('register');
    Route::post('/register', [RegisterController::class, 'register'])->name('register');
    Route::get('/logout', [LogoutController::class, 'logout'])->name('logout');
    Route::get('internshipInfo', [InternshipController::class, 'getInternshipInfo'])->name('internshipInfo');
    Route::get('internshipUploadFile', [InternshipController::class, 'internshipUploadFile'])->name('internshipUploadFile');
    
});










/* Route::prefix('admin')->middleware('auth')->group(function () {

    Route::get('/', [AdminController::class, 'admin'])->name('admin');
}); */
