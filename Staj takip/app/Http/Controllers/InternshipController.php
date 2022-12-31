<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class InternshipController extends Controller
{
    public function getInternShipInfo()
    {
        return view('front.include.body.logged.student.internship_info');
    }

    public function internshipUploadFile()
    {
        return view('front.include.body.logged.student.internship_upload_file');
    }
}
