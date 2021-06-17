<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAvmlerTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('avmler', function (Blueprint $table) {
            $table->increments('id');
            $table->string('adi');
            $table->unsignedInteger('il_id')->index(); //il_id sütununa index ekliyoruz.
            $table->boolean('aktif_mi');
            $table->timestamps();
            $table->softDeletes();
            $table->foreign('il_id')->references('id')->on('iller'); //iki tablo arasında ki 
                                                                    //ilişkisel bağlantı sağlanıyor..
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('avmler');
    }
}
