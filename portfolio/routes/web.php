<?php

use App\Http\Controllers\AdminController;
use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;


Route::prefix('/')->group(function () {
    Route::get('/', [HomeController::class, 'index'])->name('index');
});

Route::get('/login', [HomeController::class, 'loginFunc'])->name('login');



Route::prefix('admin')->middleware('auth')->group(function () {

    Route::get('/', [AdminController::class, 'admin'])->name('admin');
    Route::get('/register', [AdminController::class, 'registerFunc'])->name('registerr');
    
    Route::get('/projectAdmin', [AdminController::class, 'projectAdmin'])->name('projectAdmin');
    Route::post('/projectAdmin', [AdminController::class, 'projectAdmin']);

    Route::get('/insertProject', [AdminController::class, 'insertProject'])->name('insertProject');
    Route::post('/insertProject', [AdminController::class, 'insertProject']);

    Route::get('/guncelle', [AdminController::class, 'guncelle'])->name('guncelle');
    Route::post('/guncelle', [AdminController::class, 'guncelle']);
});
