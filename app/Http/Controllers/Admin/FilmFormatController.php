<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FilmFormat;

class FilmFormatController extends Controller
{
    public function index()
    {
        $formatlar = FilmFormat::paginate(20);

        return view('admin.pages.film_formatlari', compact('formatlar'));
    }

    public function store(Request $request)
    {
        $request->validate(['adi' => 'required|min:2|max:255|unique:film_formatlari,adi']);

        FilmFormat::create($request->all());

        return redirect()->back()->with('status', true)->with('message', 'Ekleme gerçekleştirilmiştir');
    }

    public function update(Request $request, $id)
    {
        $formatlar = FilmFormat::findOrFail($id);

        $request->validate(['adi' => 'required|min:2|max:255|unique:film_formatlari,adi']);

        $formatlar->update($request->all());

        return redirect()->back()->with('status', true)->with('mesaj','Film Formatı güncellenmiştir');
    }

    public function delete($id)
    {
        $filmFormati = FilmFormat::findOrFail($id);

        $filmFormati->delete();

        return redirect()->back()->with('status', true)->with('mesaj', 'Silme işleminiz gerçekleştirildi');
    }
}
