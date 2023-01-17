<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use App\Models\Internship;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\Auth\LogoutController;
use App\Http\Controllers\Internship\InternshipController;
use Illuminate\Support\Facades\Auth;

Route::prefix('/')->group(function () {


    Route::get('/', [HomeController::class, 'index'])->name('index');
});


Route::get('/login', [LoginController::class, 'show'])->name('show');
Route::post('/login', [LoginController::class, 'login'])->name('login');
Route::get('/register', [RegisterController::class, 'show'])->name('register');
Route::post('/register', [RegisterController::class, 'register'])->name('register');

Route::group(['middleware' => 'auth'], function () {
    
});

Route::group(['middleware' => ['auth']], function () {

    Route::get('/logout', [LogoutController::class, 'logout'])->name('logout');
    Route::get('internshipInfo', [InternshipController::class, 'getInternshipInfo'])->name('internshipInfo');
    Route::get('internshipUploadFile', [InternshipController::class, 'internshipUploadFile'])->name('internshipUploadFile');
});


