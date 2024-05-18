<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class JenisKelaminSeeder extends Seeder
{
    public function run()
    {
        DB::table('jenis_kelamin')->insert([
            ['kode' => 1, 'jenis_kelamin' => 'laki-laki'],
            ['kode' => 2, 'jenis_kelamin' => 'perempuan'],
        ]);
    }
}
