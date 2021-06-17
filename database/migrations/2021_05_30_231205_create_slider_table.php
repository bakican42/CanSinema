<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSliderTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('slider', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('film_id');
            $table->string('resim_yolu');
            $table->tinyInteger('aktif_mi');
            $table->integer('sira');
            $table->timestamps();
            $table->softDeletes();


            $table->foreign('film_id')->references('id')->on('filmler');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('slider');
    }
}
