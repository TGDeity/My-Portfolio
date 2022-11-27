<?php

namespace App\Http\Controllers;

use App\Models\Project;
use GuzzleHttp\Middleware;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Models\User;

class AdminController extends Controller
{




    public function projectAdmin()
    {

        $users = User::all();
        $project = Project::all();
        return view('admin.projects.projectAdmin', ['users' => $users, 'project' => $project]);
    }

    public function admin()
    {
        return view('admin.admin');
    }

    public function insertProject()
    {
        $project = Project::all();
        return view('admin.projects.insertProject', ['project' => $project]);
    }


    public function guncelle()
    {
        $project = Project::all();
        return view('admin.projects.guncelle', ['project' => $project]);
    }

    public function registerFunc()
    {
        return view('auth.register');
    }
}
