<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Film;
use App\Models\FilmYorum;
use App\Models\User;

class HomeController extends Controller
{
    public function index()
    {
        $kullanicilar = User::kullanicilar()->count();
        $filmler = Film::count();
        $yorumlar = FilmYorum::bekleyenler()->count();
        $sonEklenenFilmler = Film::orderByDesc('id')->limit(9)->get();

        return view('admin.dashboard', compact('kullanicilar', 'filmler', 'yorumlar', 'sonEklenenFilmler'));
    }
}
