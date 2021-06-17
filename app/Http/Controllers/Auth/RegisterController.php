<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;
use App\Models\User;
use Illuminate\Foundation\Auth\RegistersUsers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class RegisterController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Register Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles the registration of new users as well as their
    | validation and creation. By default this controller uses a trait to
    | provide this functionality without requiring any additional code.
    |
    */

    use RegistersUsers;

    /**
     * Where to redirect users after registration.
     *
     * @var string
     */
    protected $redirectTo = RouteServiceProvider::HOME;

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest');
    }

    /**
     * Get a validator for an incoming registration request.
     *
     * @param  array  $data
     * @return \Illuminate\Contracts\Validation\Validator
     */
    protected function validator(array $data)
    {
        return Validator::make($data, [
            'ad' => ['required', 'string', 'max:255'],
            'soyad' => ['required', 'string', 'max:255'],
            'kullanici_adi' => ['required', 'string', 'max:255', 'unique:users'],
            'cinsiyet' => ['nullable', 'integer', 'in:1,2'],
            'dogum_tarihi' => ['nullable', 'string', 'max:12'],
            'tel_no' => ['nullable', 'string', 'max:13'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'string', 'min:8', 'confirmed'],
        ]);
    }

    /**
     * Create a new user instance after a valid registration.
     *
     * @param  array  $data
     * @return \App\Models\User
     */
    protected function create(array $data)
    {
        return User::create([
            'rutbe' => 'kullanici',
            'ad' => $data['ad'],
            'soyad' => $data['soyad'],
            'kullanici_adi' => $data['kullanici_adi'],
            'cinsiyet' => $data['cinsiyet'],
            'dogum_tarihi' => $data['dogum_tarihi'] ?? null,
            'tel_no' => $data['tel_no'] ?? null,
            'email' => $data['email'],
            'password' => Hash::make($data['password']),
        ]);
    }
}
