<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Avm;
use App\Models\Film;
use App\Models\FilmDil;
use App\Models\FilmFormat;
use App\Models\FilmResimleri;
use App\Models\FilmRezervasyonlari;
use App\Models\FilmSeans;
use App\Models\Kategori;
use App\Models\Salon;
use App\Models\Seans;
use Illuminate\Http\Request;

use Str;

class FilmController extends Controller
{
    public function index()
    {
        $filmler = Film::with(['puan', 'kategori', 'salon', 'format', 'dil'])->orderByDesc('id')->paginate(20);

        return view('admin.pages.filmler', compact('filmler'));
    }

    public function create()
    {
        $kategoriler = Kategori::all();
        $formatlar   = FilmFormat::all();
        $diller      = FilmDil::all();
        $seanslar    = Seans::all();
        $salonlar    = Salon::all();
        $avmler      = Avm::all();

        return view('admin.pages.film_ekle', compact('kategoriler', 'formatlar', 'diller', 'seanslar', 'salonlar', 'avmler'));
    }


    public function store(Request $request)
    {
        $rules = [
            'adi'            => 'required|string|min:2|max:255',
            'yonetmen'       => 'required|string|min:2|max:255',
            'oyuncular'      => 'required|string|min:2|max:255',
            'sure'           => 'required|string|min:2|max:255',
            'aciklama'       => 'required|min:3',
            'vizyon_tarihi'  => 'required|string|min:2|max:255',
            'bilet_ucreti'   => 'required|numeric',
            'fragman_url'    => 'required|string|url',
            'kategori_id'    => 'required|integer|exists:kategoriler,id',
            'format_id'      => 'required|integer|exists:film_formatlari,id',
            'dil_id'         => 'required|integer|exists:film_dilleri,id',

            'avm_id'         => 'required|integer|exists:avmler,id',
            'salon_id'       => 'required|integer|exists:salonlar,id',
            'seans_id'       => 'required',
            'seans_id.*'     => 'integer|exists:seanslar,id',

            'kapak_foto'     => 'required|image|mimes:jpeg,png,jpg,svg|max:2048',
            'galeri_foto'    => 'required',
            'galeri_foto.*'  => 'mimes:jpeg,jpg,png,svg|max:2048'
        ];

        $request->validate($rules);

        $film   = Film::create($request->all());
        $salon = Salon::find($request->get('salon_id'));

        foreach (range(1, $salon->kapasite) as $k =>  $v)
        {
            FilmRezervasyonlari::create(['film_id' => $film->id, 'koltuk_adi' => "K-{$v}", 'bos_mu' => 0, 'kullanici_id' => 0]);
        }

        foreach ($request->get('seans_id') as $seansId)
        {
            FilmSeans::create(['seans_id' => $seansId, 'film_id' => $film->id]);
        }

        if ($request->hasFile('kapak_foto'))
        {
            $kapakFoto = Str::slug($request->get('adi') . " kapak foto", '-') . '.' . $request->file('kapak_foto')->getClientOriginalExtension();
            $request->file('kapak_foto')->move('uploads/', $kapakFoto);
            FilmResimleri::create(['film_id' => $film->id, 'pozisyon' => 'kapak', 'resim_yolu' => "/uploads/{$kapakFoto}"]);
        }

        if($request->hasfile('galeri_foto')) {
            foreach($request->file('galeri_foto') as $file)
            {
                $name = Str::slug($request->get('adi') . " galeri foto", '-') . rand(1,99999) . '.' . $file->getClientOriginalExtension();
                $file->move('uploads/', $name);
                FilmResimleri::create(['film_id' => $film->id, 'pozisyon' => 'galeri', 'resim_yolu' => "/uploads/{$name}"]);
            }
        }

        return redirect()->route('admin.filmler.index')->with('mesaj', 'Film Başarıyla eklendi')->with('status', true);

    }


    public function show(Request $request, $id)
    {
        $film         = Film::with(['kategori', 'salon', 'format', 'dil'])->findOrFail($id);
        $kategoriler = Kategori::all();
        $formatlar   = FilmFormat::all();
        $diller      = FilmDil::all();
        $seanslar    = Seans::all();
        $salonlar    = Salon::all();
        $avmler      = Avm::all();

        return view('admin.pages.film_guncelle', compact('kategoriler', 'formatlar', 'diller', 'seanslar', 'salonlar', 'avmler', 'film'));
    }



    public function update(Request $request, $id)
    {
        $film = Film::findOrFail($id);

        $rules = [
            'adi'            => 'required|string|min:2|max:255',
            'yonetmen'       => 'required|string|min:2|max:255',
            'oyuncular'      => 'required|string|min:2|max:255',
            'sure'           => 'required|string|min:2|max:255',
            'aciklama'       => 'required|min:3',
            'vizyon_tarihi'  => 'required|string|min:2|max:255',
            'bilet_ucreti'   => 'required|numeric',
            'fragman_url'    => 'required|string|url',
            'kategori_id'    => 'required|integer|exists:kategoriler,id',
            'format_id'      => 'required|integer|exists:film_formatlari,id',
            'dil_id'         => 'required|integer|exists:film_dilleri,id',

            'avm_id'         => 'required|integer|exists:avmler,id',
            'salon_id'       => 'required|integer|exists:salonlar,id',
            'seans_id'       => 'required',
            'seans_id.*'     => 'integer|exists:seanslar,id',

            'kapak_foto'     => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
            'galeri_foto'    => 'nullable',
            'galeri_foto.*'  => 'mimes:jpeg,jpg,png,svg|max:2048'
        ];

        $request->validate($rules);

        $salon = Salon::find($request->get('salon_id'));

        foreach ($request->get('seans_id') as $seansId)
        {
            FilmSeans::updateOrCreate(
                ['seans_id' => $seansId, 'film_id' => $film->id],
                ['seans_id' => $seansId, 'film_id' => $film->id]
            );
        }

        if ($request->hasFile('kapak_foto'))
        {
            $hasFoto = FilmResimleri::where(['film_id' => $film->id, 'pozisyon' => 'kapak'])->first();

            if (!is_null($hasFoto) && $hasFoto->count() >= 1){
                $this->resimSil($hasFoto->id);
            }

            $kapakFoto = Str::slug($request->get('adi') . " kapak foto", '-') . $film->id . '.' . $request->file('kapak_foto')->getClientOriginalExtension();
            $request->file('kapak_foto')->move('uploads/', $kapakFoto);
            FilmResimleri::create(['film_id' => $film->id, 'pozisyon' => 'kapak', 'resim_yolu' => "/uploads/{$kapakFoto}"]);
        }

        if($request->hasfile('galeri_foto')) {
            foreach($request->file('galeri_foto') as $file)
            {
                $name = Str::slug($request->get('adi') . " galeri foto", '-') . $film->id . '.' . $file->getClientOriginalExtension();
                $file->move('uploads/', $name);
                FilmResimleri::create(['film_id' => $film->id, 'pozisyon' => 'galeri', 'resim_yolu' => "/uploads/{$name}"]);
            }
        }


        foreach (range(1, $salon->kapasite) as $k =>  $v)
        {
            FilmRezervasyonlari::updateOrCreate(
                ['film_id' => $film->id, 'koltuk_adi' => "K-{$v}", 'bos_mu' => 0, 'kullanici_id' => 0],
                ['film_id' => $film->id, 'koltuk_adi' => "K-{$v}", 'bos_mu' => 0]
            );
        }

        foreach ($request->get('seans_id') as $seansId)
        {
            FilmSeans::updateOrCreate(
                ['seans_id' => $seansId, 'film_id' => $film->id],
                ['seans_id' => $seansId, 'film_id' => $film->id]
            );
        }

        $film->update($request->all());

        return redirect()->back()->with('mesaj', 'Film başarıyla güncellendi!')->with('status', true);

    }



    public function resimSil(Request $request, $id)
    {
        $filmResimi = FilmResimleri::findOrFail($id);
        $imagePath = public_path() . $filmResimi->resim_yolu;

        if(\File::exists($imagePath)) {
            \File::delete($imagePath);
            $filmResimi->delete();

            return back()->with('status', true)->with('mesaj', 'Fotoğraf silinmiştir');
        }

        return redirect()->back()->with('status', false)->with('mesaj', 'Fotoğraf Bulunamadı');
    }


    public function delete(Request $request, $id){
        $film = Film::findOrFail($id);

        $film->delete();

        return redirect()->back()->with('status', true)->with('mesaj', 'Seçili film silinmiştir.');
    }
}
