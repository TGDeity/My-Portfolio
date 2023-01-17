<?php

namespace App\Http\Controllers\Internship;

use App\Http\Controllers\Controller;
use App\Models\Internship\Internships;
use App\Models\Internship\Internships_count_day;
use Illuminate\Support\Facades\Auth;
use App\Models\Student\Students;
use Illuminate\Support\Facades\DB;

class InternshipController extends Controller
{
    public function getInternShipInfo()
    {
        $userInternshipsId = Auth::user()->internship_id;
        //  DD($userInternshipsId);

        $strId = strval($userInternshipsId);






        $internships = Internships_count_day::select("*")->where('internship_id', '=',  $strId)->get();

   




        return view('front.include.body.logged.student.internship_info', ['internships' => $internships]);
    }

    public function internshipUploadFile()
    {
        return view('front.include.body.logged.student.internship_upload_file');
    }
}
