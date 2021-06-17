<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Kategori;
use Illuminate\Http\Request;

class KategoriController extends Controller
{

    public function index()
    {
        $kategoriler = Kategori::paginate(20);

        return view('admin.pages.kategoriler', compact('kategoriler'));
    }

    public function store(Request $request)
    {
        $request->validate(['adi' => 'required|min:3|max:255|unique:kategoriler,adi']);
        $request->merge(['aktif_mi' => 1]);
        Kategori::create($request->all());

        return redirect()->back()->with('status', true)->with('message', 'Ekleme gerçekleştirilmiştir');
    }

    public function update(Request $request, $id)
    {
        $kategori = Kategori::findOrFail($id);

        $request->validate(['adi' => 'required|min:3|max:255|unique:kategoriler,adi']);

        $kategori->update($request->all());

        return redirect()->back()->with('status', true)->with('mesaj','Kategori Adı güncellenmiştir');
    }

    public function delete($id)
    {
        $il = Kategori::findOrFail($id);

        $il->delete();

        return redirect()->back()->with('status', true)->with('mesaj', 'Silme işleminiz gerçekleştirildi');
    }
}
