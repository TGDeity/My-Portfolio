<?php

use App\Http\Controllers\HomeController;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('index');
});

Route::get('/', [HomeController::class, 'index'])->name('index');

Route::get('onLisans', [HomeController::class, 'onLisans'])->name('onLisans');
Route::get('lisans', [HomeController::class, 'lisans'])->name('lisans');
Route::get('yuksekLisans', [HomeController::class, 'yuksekLisans'])->name('yuksekLisans');
Route::get('aboutUs', [HomeController::class, 'aboutUs'])->name('aboutUs');

Route::get('/previewLicense/{lisence}/', [HomeController::class, 'previewLicense'])->name('previewLicense');
