<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('rutbe');
            $table->string('ad');
            $table->string('soyad');
            $table->string('kullanici_adi');
            $table->string('email');
            $table->enum('cinsiyet', ['erkek', 'kadin'])->default('erkek');
            $table->string('password');
            $table->string('dogum_tarihi')->nullable();
            $table->string('tel_no')->nullable();
            $table->timestamps();
            $table->softDeletes();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('users');
    }
}
