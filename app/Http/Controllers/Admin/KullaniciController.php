<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class KullaniciController extends Controller
{

    public function index()
    {
        $kullanicilar = User::kullanicilar()->paginate(20);

        return view('admin.pages.kullanicilar', compact('kullanicilar'));
    }

    public function update(Request $request, $id)
    {
        $kullanici = User::findOrFail($id);

        $request->validate([
            'ad'        => 'required|min:3|max:255',
            'soyad'     => 'required|min:3|max:255',
            'cinsiyet'  => 'required|in:erkek,kadin',
            'password'  => 'nullable|min:8|max:255'
       ]);

        $request->merge(['password' => \Hash::make($request->password)]);
        $kullanici->update($request->all());
        return redirect()->route('admin.kullanicilar.index')->with('status', true)->with('mesaj', 'Güncelleme gerçekleştirilmiştir.');
    }

    public function delete(Request $request, $id)
    {
        $kullanici = User::findOrFail($id);

        $kullanici->delete();

        return redirect()->route('admin.kullanicilar')->with('status', true)->with('mesaj', 'Kullanıcı başarıyla silinmiştir.');
    }
}
