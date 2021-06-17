<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Slider;
use App\Models\Film;
use Illuminate\Http\Request;

class SliderController extends Controller
{
    public function index()
    {
        $sliders = Slider::paginate(20);

        return view('admin.pages.slider', compact('sliders'));
    }

    public function create()
    {
        $filmler = Film::all();

        return view('admin.pages.slider_ekle', compact('filmler'));
    }

    public function store(Request $request)
    {
        $rules = [
            'film_id'   => 'required|exists:filmler,id',
            'sira'     => 'required|integer',
            'slider'   => 'required|image|mimes:jpeg,png,jpg,svg|max:2048',
        ];

        $request->validate($rules);

        $film = Film::findOrFail($request->get('film_id'));

        if ($request->hasFile('slider'))
        {
            $slider = \Str::slug("slider foto", '-') . rand(1,9999) . '.' . $request->file('slider')->getClientOriginalExtension();
            $request->file('slider')->move('uploads/', $slider);
        }

        Slider::create(['film_id' => $film->id, 'sira' => $request->get('sira'),  'aktif_mi' => 1, 'resim_yolu' => "/uploads/{$slider}"]);

        return redirect()->route('admin.slider.index');
    }

    public function edit(Request $request, $id)
    {
        $slider = Slider::findOrFail($id);
        $filmler = Film::all();
        return view('admin.pages.slider_duzenle', compact('slider', 'filmler'));
    }

    public function update(Request $request, $id)
    {
        $rules = [
            'film_id'   => 'required|exists:filmler,id',
            'sira'     => 'required|integer',
            'slider'   => 'nullable|image|mimes:jpeg,png,jpg,svg|max:2048',
        ];

        $request->validate($rules);

        $slider = Slider::FindOrFail($id);
        $film = Film::findOrFail($request->get('film_id'));

        if ($request->hasFile('slider'))
        {
            $slider_name = \Str::slug("slider foto", '-') . rand(1,9999) . '.' . $request->file('slider')->getClientOriginalExtension();
            $request->file('slider')->move('uploads/', $slider_name);
            $slider_name = "/uploads/{$slider_name}";
        }else{
            $slider_name = $slider->resim_yolu;
        }

        Slider::where('id', $id)->update(['film_id' => $film->id, 'sira' => $request->get('sira'),  'aktif_mi' => 1, 'resim_yolu' => $slider_name]);

        return redirect()->route('admin.slider.index');
    }

    public function delete(Request $request, $id)
    {
        $slider = Slider::findOrFail($id);
        $slider->delete();
        return redirect()->route('admin.slider.index');
    }
}
