<?php

namespace App\Http\Controllers;

use App\Models\Programs;
use Illuminate\Http\Request;

class HomeController extends Controller
{

    public function index()
    {
        return view('front.index');
    }

    public function onLisans()
    {
        return view('front.onLisans.onLisans');
    }

    public function lisans()
    {
        return view('front.lisans.lisans');
    }

    public function aboutUs()
    {
        return view('front.about_us.about_us');
    }

    public function yuksekLisans()
    {
        return view('front.yuksekLisans.yuksekLisans');
    }


    public function previewLicense($license)
    {

        $getProgramDetails = Programs::getUndergraduatePrograms($license);
        $getProgramNamesID = Programs::getProgramNamesID($license);

        $data = [
            'getProgramDetails' => $getProgramDetails, //Örneğin bilgisayar programcılığına ait tüm dersleri al.
            'getProgramNamesID' => $getProgramNamesID, //program_names tablosundaki kayıtların bilgilerini içeririr.
        ];
        return view('front.preview_license.preview',  $data);
    }
}
