<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTabelProfesiTable extends Migration
{
    public function up()
    {
        Schema::create('tabel_profesi', function (Blueprint $table) {
            $table->char('kode', 1)->primary();
            $table->string('nama_profesi');
        });
    }

    public function down()
    {
        Schema::dropIfExists('tabel_profesi');
    }
}
