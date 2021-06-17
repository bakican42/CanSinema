<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FilmDil;

class FilmDillerController extends Controller
{
    public function index()
    {
        $diller = FilmDil::paginate(20);

        return view('admin.pages.film_dilleri', compact('diller'));
    }

    public function store(Request $request)
    {
        $request->validate(['adi' => 'required|min:3|max:255|unique:film_dilleri,adi']);
        $request->merge(['aktif_mi' => 1]);
        FilmDil::create($request->all());

        return redirect()->back()->with('status', true)->with('message', 'Ekleme gerçekleştirilmiştir');
    }

    public function update(Request $request, $id)
    {
        $kategori = FilmDil::findOrFail($id);

        $request->validate(['adi' => 'required|min:3|max:255|unique:film_dilleri,adi']);

        $kategori->update($request->all());

        return redirect()->back()->with('status', true)->with('mesaj','Film Dilleri güncellenmiştir');
    }

    public function delete($id)
    {
        $il = FilmDil::findOrFail($id);

        $il->delete();

        return redirect()->back()->with('status', true)->with('mesaj', 'Silme işleminiz gerçekleştirildi');
    }
}
