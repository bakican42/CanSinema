<?php

namespace App\Http\Controllers;

use App\Models\Avm;
use App\Models\Slider;
use Illuminate\Http\Request;
use App\Models\Film;

class HomeController extends Controller
{
    public function index()
    {
        $filmler = Film::limit(10)->get();
        $sliders = Slider::where('aktif_mi', 1)->orderByDesc('sira')->get();
        return view('home', compact('filmler', 'sliders'));
    }

}
