<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddForeignKeysToHasilResponseTable extends Migration
{
    public function up()
    {
        Schema::table('hasil_response', function (Blueprint $table) {
            $table->foreign('jenis_kelamin')->references('kode')->on('jenis_kelamin')->onDelete('cascade');
            $table->foreign('profesi')->references('kode')->on('tabel_profesi')->onDelete('cascade');
        });
    }

    public function down()
    {
        Schema::table('hasil_response', function (Blueprint $table) {
            $table->dropForeign(['jenis_kelamin']);
            $table->dropForeign(['profesi']);
        });
    }
}
