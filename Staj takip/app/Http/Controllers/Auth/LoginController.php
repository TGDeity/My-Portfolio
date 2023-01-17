<?php

namespace App\Http\Controllers\Auth;
use App\Http\Controllers\Controller;

use App\Http\Requests\LoginRequest;
use Illuminate\Support\Facades\Auth;

class LoginController extends Controller
{

    /**
     * Display login page.
     * 
     * @return Renderable
     */
    public function show()
    {
        /**
         * Display login page.
         * 
         * @return Renderable
         */
        return view('auth.login');
    }

    public function login(LoginRequest $request)
    {
        if ($request->isMethod('post')) {
            $credentials = $request->only('number', 'password');
            if (Auth::attempt($credentials)) {
                $request->session()->regenerate();
                return redirect()->intended();
            }
            return back()->withErrors(['number' => "Veritabani kayitlarimizda bulunamadi."]);
        } else {
            return view('front.index');
        }
    }
}
