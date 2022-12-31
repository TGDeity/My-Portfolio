<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Internship;
use App\Models\User;

class HomeController extends Controller
{
    public function index()
    {
        $internships = Internship::all();
        $students = User::all();
        return view('front.index')->with('internships', $internships)->with('students', $students);
    }
}
