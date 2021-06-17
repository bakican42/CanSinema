<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Il;

class IllerController extends Controller
{
    public function index()
    {
        $iller = Il::orderByDesc('id')->paginate(20);

        return view('admin.pages.iller', ['iller' => $iller]);
    }

    public function store(Request $request)
    {
        $request->validate(['ad' => 'required|min:3|max:255|unique:iller,ad']);

        Il::create($request->all());

        return redirect()->back()->with('status', true)->with('message', 'Ekleme gerçekleştirilmiştir');
    }

    public function update(Request $request, $id)
    {
        $il = Il::findOrFail($id);

        $request->validate(['ad' => 'required|min:3|max:255|unique:iller,ad']);

        $il->update($request->all());

        return redirect()->back()->with('status', true)->with('mesaj','İl adı güncellenmiştir');
    }

    public function delete($id)
    {
        $il = Il::findOrFail($id);

        $il->delete();

        return redirect()->back()->with('status', true)->with('mesaj', 'Silme işleminiz gerçekleştirildi');
    }
}
