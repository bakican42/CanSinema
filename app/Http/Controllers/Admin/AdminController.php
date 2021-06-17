<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;

class AdminController extends Controller
{
    public function index()
    {
        $adminler = User::yoneticiler()->orderByDesc('id')->paginate(20);

        return view('admin.pages.adminler', compact('adminler'));
    }

    public function update(Request $request, $id)
    {
        $admin = User::findOrFail($id);

        $rules = [
            'ad'            => 'required|string|max:255',
            'soyad'         => 'required|string|max:255',
            'cinsiyet'      => 'nullable|string|in:erkek,kadin',
            'dogum_tarihi'  => 'nullable|string|max:10',
            'tel_no'        => 'nullable|string|max:13',
            'password'      => 'nullable|string|min:8',
        ];

        $request->validate($rules);

        $request->merge(['password' => \Hash::make($request->password)]);

        $admin->update($request->all());

        return back()->with('status', true)->with('mesaj', 'Admin başarıyla güncellendi');
    }

    public function store(Request $request)
    {
        $rules = [
            'ad'            => 'required|string|max:255',
            'soyad'         => 'required|string|max:255',
            'kullanici_adi' => 'required|string|max:255|unique:users',
            'cinsiyet'      => 'nullable|string|in:kadin,erkek',
            'dogum_tarihi'  => 'nullable|string|max:10',
            'tel_no'        => 'nullable|string|max:13',
            'email'         => 'required|string|email|max:255|unique:users',
            'password'      => 'required|string|min:5',
        ];

        $request->validate($rules);
        $request->merge(['rutbet' => 'admin', 'password' => \Hash::make($request->password)]);


        User::create($request->all());

        return back()->with('status', true)->with('mesaj', 'Admin başarıyla eklendi');
    }

    public function delete(Request $request, $id)
    {
        $admin = User::findOrFail($id);

        $admin->delete();

        return back()->with('status', true)->with('mesaj', 'Admin başarıyla silindi');
    }
}
