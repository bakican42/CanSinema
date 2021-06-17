<?php

namespace App\Http\Controllers;

use App\Models\Film;
use App\Models\FilmRezervasyonlari;
use Illuminate\Http\Request;

class RezervasyonController extends Controller
{
    public function create(Request $request, $id)
    {
        $film  = Film::with(['seans', 'seans.seans','salon', 'salon.avm'])->findOrFail($id);

        return view('rezervasyon', compact('film'));
    }


    public function store(Request $request, $id)
    {
        $film  = Film::findOrFail($id);
        $user = \Auth::user();

        $request->validate(['data' => 'required|array'], ['data.required' => 'Koltuk seçiniz lütfen']);

        FilmRezervasyonlari::whereIn('id', $request->get('data'))->where('film_id', $film->id)->update(['bos_mu' => 1, 'kullanici_id' => $user->id]);

        return response()->json(['status' => true, 'mesaj' => 'Rezervasyon işleminiz gerçekleştirilmiştir']);
    }
}
