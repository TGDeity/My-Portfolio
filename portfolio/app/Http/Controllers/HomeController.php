<?php

namespace App\Http\Controllers;

use App\Models\Project;
use App\Models\User;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        try {
            $ip = request()->ip();
            DB::table('ticker')->firstOrCreate([
                'ip' => $ip,

            ]);
        } catch (\Throwable $th) {
        }


        $project = Project::orderBy('id', 'desc')->get();
        return view('front.index', ['project' => $project]);
    }

    public function loginFunc()
    {

        return view('auth.login');
    }
}
