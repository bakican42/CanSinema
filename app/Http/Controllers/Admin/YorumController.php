<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\FilmYorum;

class YorumController extends Controller
{
    public function index()
    {
        $yorumlar = FilmYorum::with(['kullanici', 'film'])->orderByDesc('id')->paginate(20);

        return view('admin.pages.yorumlar', compact('yorumlar'));
    }

    public function status(Request $request, $id, $durum)
    {
        $yorum = FilmYorum::findOrFail($id);

        $yorum->update(['aktif_mi' => $durum]);

        return redirect()->back()->with('status', true)->with('mesaj', 'Yorum durumu güncellenmiştir');
    }


    public function delete($id)
    {
        $yorum = FilmYorum::findOrFail($id);
        $yorum->delete();
        return redirect()->back()->with('status', true)->with('mesaj', 'Yorum Silinmiştir');

    }
}
