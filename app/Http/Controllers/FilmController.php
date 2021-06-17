<?php

namespace App\Http\Controllers;

use App\Models\Film;
use App\Models\FilmPuan;
use App\Models\FilmYorum;
use Illuminate\Http\Request;
use App\Models\FilmFormat;
use App\Models\Kategori;
use App\Models\Avm;
use App\Models\Il;
use App\Models\FilmDil;

class FilmController extends Controller
{
    public function index(Request $request, $id)
    {
        $film     = Film::with(['yorum', 'yorum.kullanici'])->findOrFail($id);
        $puanlar  = FilmPuan::where('film_id', $film->id)->get();
        $carpimlar= 0;
        $toplamlar= 0;
        $ortalama = 0;

        $puanlar->groupBy('puan')->each(function ($p) use(&$carpimlar, &$toplamlar){
            $carpimlar += $p->first()->puan * $p->count();
            $toplamlar += $p->count();
        });

        if ($carpimlar >0 && $toplamlar >0){
            $ortalama = number_format($carpimlar / $toplamlar, 2);
        }

        return view('film_detay', compact('film', 'ortalama'));
    }


    public function filmler(Request $request)
    {

        $filmler = Film::with(['salon', 'salon.avm', 'salon.avm.il']);

        if ($request->filled('kategori_id') && is_numeric($request->kategori_id)){
            $filmler->where('kategori_id', $request->get('kategori_id'));
        }

        if ($request->filled('dil_id') && is_numeric($request->dil_id)){
            $filmler->where('dil_id', $request->get('dil_id'));
        }

        if ($request->filled('film_adi')){
            $filmler->where('adi', 'like', "%{$request->get('film_adi')}%")
                ->orWhere('aciklama', 'like', "%{$request->get('film_adi')}%")
                ->orWhere('yonetmen', 'like', "%{$request->get('film_adi')}%")
                ->orWhere('oyuncular', 'like', "%{$request->get('film_adi')}%");
        }

        if ($request->filled('format_id') && is_numeric($request->format_id)){
            $filmler->where('format_id', $request->get('format_id'));
        }


        $filmler      = $filmler->orderByDesc('id')->get();

        if ($request->filled('avm_id')){
            $filmler = $filmler->where('salon.avm.id', $request->avm_id);
        }
        if ($request->filled('il_id') && is_numeric($request->il_id)){
            $filmler = $filmler->where('salon.avm.il_id', $request->il_id);
        }


        $iller       = Il::all();
        $avmler      = Avm::where('aktif_mi', 1)->get();
        $kategoriler = Kategori::where('aktif_mi', 1)->get();
        $diller      = FilmDil::all();
        $formatlar   = FilmFormat::all();

        return view('filmler', compact('filmler', 'iller', 'avmler', 'kategoriler', 'diller', 'formatlar'));
    }

    public function trendler()
    {
        $filmler       = Film::with('puan')->get();


        $filmler->map(function($film){
            $carpimlar = 0;
            $toplamlar = 0;
            $ortalama = 0;

            $film->puan->groupBy('puan')->each(function ($p) use(&$carpimlar, &$toplamlar){
                $carpimlar += $p->first()->puan * $p->count();
                $toplamlar += $p->count();
            });

            if ($carpimlar >0 && $toplamlar > 0){
                $ortalama = number_format($carpimlar / $toplamlar, 2);
            }

            $film->ortalama = $ortalama;
            return $film;
        });

        $filmler = $filmler->sortByDesc('ortalama');

        return view('trendler', compact('filmler'));
    }

    public function yorumEkle(Request $request, $id)
    {
        $film = Film::findOrFail($id);

        $request->validate(['yorum' => 'required|string|min:3']);
        $user = \Auth::user();

        FilmYorum::create(['film_id' => $film->id, 'kullanici_id' => $user->id, 'yorum' => $request->get('yorum'), 'aktif_mi' => 0]);

        return back()->with('status', true)->with('mesaj', 'Yorumunuz sisteme eklenmiştir. Kontrol edildikten sonra eklenecektir.');
    }

    public function puan(Request $request, $id)
    {
        $request->validate(['puan' => 'required|integer|min:1|max:5']);

        $film  = Film::findOrFail($id);
        $user = \Auth::user();

        FilmPuan::create(['film_id' => $film->id, 'kullanici_id' => $user->id, 'puan' => $request->get('puan')]);

        return response()->json(['status' => true, 'mesaj' => 'Puanlama işleminiz gerçekleştirilmiştir', 'class' => 'success']);
    }

}
