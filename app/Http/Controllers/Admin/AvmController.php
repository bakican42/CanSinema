<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

use App\Models\Avm;
use App\Models\Il;

class AvmController extends Controller
{
    public function index()
    {
        $avmler = Avm::with('il')->orderByDesc('id')->paginate(20);
        $iller  = Il::all();

        return view('admin.pages.avmler', compact('avmler', 'iller'));
    }


    public function store(Request $request)
    {
        $request->validate(['il_id' => 'required|exists:iller,id', 'adi' => 'required|string|min:3|max:255']);

        $avm = new Avm();

        $avm->il_id = $request->il_id;
        $avm->adi   = $request->adi;
        $avm->aktif_mi = $request->filled('aktif_mi') ? 1 : 0;
        $avm->save();

        return redirect()->back()->with('status', true)->with('mesaj', 'AVM eklenmiştir');
    }

    public function update(Request $request, $id)
    {
        $avm = Avm::findOrFail($id);

        $request->validate(['il_id' => 'required|exists:iller,id', 'adi' => 'required|string|min:3|max:255']);

        if (!$request->filled('aktif_mi')){
            $request->merge(['aktif_mi' => 0]);
        }

        $avm->update($request->all());

        return redirect()->back()->with('status', true)->with('mesaj', 'AVM Güncellenmiştir');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
