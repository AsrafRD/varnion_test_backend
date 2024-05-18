<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateJenisKelaminTable extends Migration
{
    public function up()
    {
        Schema::create('jenis_kelamin', function (Blueprint $table) {
            $table->tinyInteger('kode')->primary();
            $table->string('jenis_kelamin');
        });
    }

    public function down()
    {
        Schema::dropIfExists('jenis_kelamin');
    }
}
