<?php

namespace App\Http\Controllers;

use App\Models\Student\Students;
use App\Models\Teacher\Teachers;
use App\Models\User;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\DB;
use App\Models\Internship\Internships;

class HomeController extends Controller
{
    public function index()
    {
        try {
            $id = Auth::user()->id;
            if (Auth::user()->authority_id == 1) {
                $users = User::all()->where('id', $id)->first();
                $students = Students::all()->where('id', $id)->first();
                $postVariable = ['users' => $users, 'students' => $students];
                return view('front.index', $postVariable);
            } else if (Auth::user()->authory_id == 2) {

                $teachers = User::all()->where('id', $id)->first();
                $postVariable = ['teachers' => $teachers];
                return view('front.index', $postVariable);
            } else {
                $employer = DB::table('users')->where('id', $id)->first();
                $employer = User::all()->where('id', $id)->first();
                $postVariable = ['employer' => $employer];
                return view('front.index', $postVariable);
            }
        } catch (\Throwable $th) {
            return view('front.index');
        }
    }
}
