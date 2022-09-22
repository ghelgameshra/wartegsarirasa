<?php

namespace App\Http\Controllers;

use App\Models\Outlet;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class OutletController extends Controller
{
    public function index(){
        return view('home',[
            "title" => 'Home',
            "active" => "home",
            'outlets' => Outlet::all()
        ]);
    }
}
