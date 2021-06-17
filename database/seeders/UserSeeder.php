<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        \DB::table('users')->insert(
            [
                'rutbe' => 'admin',
                'ad' => 'Baki',
                'soyad' => 'Can',
                'kullanici_adi' => 'bakican',
                'email' => 'baki@cansinema.com',
                'cinsiyet' => 1,
                'password' => \Hash::make('123123'),
                'dogum_tarihi' => '1994-01-01',
                'tel_no' => '05551234455'
            ]
        );
    }
}
