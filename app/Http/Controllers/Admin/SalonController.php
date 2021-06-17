<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Salon;
use App\Models\Avm;

class SalonController extends Controller
{
    public function index()
    {
        $salonlar = Salon::with('avm')->orderByDesc('id')->paginate(20);
        $avmler   = Avm::all();
        return view('admin.pages.salonlar', compact('salonlar', 'avmler'));
    }

    public function store(Request $request)
    {
        $request->validate(['avm_id' => 'required|exists:avmler,id', 'adi' => 'required|string|min:3|max:255', 'kapasite' => 'required|integer|min:1']);

        if (!$request->filled('aktif_mi')){
            $request->merge(['aktif_mi' => 0]);
        }

        Salon::create($request->all());

        return redirect()->back()->with('status', true)->with('mesaj', 'Salon Eklenmiştir');
    }

    public function update(Request $request, $id)
    {
        $salon = Salon::findOrFail($id);

        $request->validate(['avm_id' => 'required|exists:avmler,id', 'adi' => 'required|string|min:3|max:255', 'kapasite' => 'required|integer|min:1']);

        if (!$request->filled('aktif_mi')){
            $request->merge(['aktif_mi' => 0]);
        }

        $salon->update($request->all());

        return redirect()->back()->with('status', true)->with('mesaj', 'Salon Güncellenmiştir');
    }


    public function delete($id)
    {
        $salon = Salon::findOrFail($id);

        $salon->delete();

        return redirect()->back()->with('status', true)->with('mesaj', 'Salon Silinmiştir');

    }
}
