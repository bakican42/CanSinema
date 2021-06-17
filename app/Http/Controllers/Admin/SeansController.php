<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Seans;

class SeansController extends Controller
{
    public function index()
    {
        $seanslar = Seans::orderByDesc('id')->paginate(20);

        return view('admin.pages.seanslar', compact('seanslar'));
    }

    public function store(Request $request)
    {
        $request->validate(['adi' => 'required|date_format:H:i']);

        Seans::create($request->all());

        return redirect()->back()->with('status', true)->with('mesaj', 'Seans Eklenmiştir');
    }

    public function update(Request $request, $id)
    {
        $seans = Seans::findOrFail($id);

        $request->validate(['adi' => 'required|date_format:H:i']);

        $seans->update($request->all());

        return redirect()->back()->with('status', true)->with('mesaj', 'Seans Güncellenmiştir');

    }


    public function delete($id)
    {
        $seans = Seans::findOrFail($id);

        $seans->delete();

        return redirect()->back()->with('status', true)->with('mesaj', 'Seans Silinmiştir');

    }
}
