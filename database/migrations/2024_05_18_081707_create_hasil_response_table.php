<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateHasilResponseTable extends Migration
{
    public function up()
    {
        Schema::create('hasil_response', function (Blueprint $table) {
            $table->id();
            $table->tinyInteger('jenis_kelamin');
            $table->string('nama');
            $table->string('nama_jalan');
            $table->string('email');
            $table->integer('angka_kurang');
            $table->integer('angka_lebih');
            $table->char('profesi', 1);
            $table->json('plain_json');
            $table->timestamps();
        });
    }

    public function down()
    {
        Schema::dropIfExists('hasil_response');
    }
}
