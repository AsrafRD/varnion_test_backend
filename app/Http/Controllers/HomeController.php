<?php

namespace App\Http\Controllers;

use App\Models\HasilResponse;
use App\RandomUser;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    protected $randomUser;

    public function __construct(RandomUser $randomUser)
    {
        $this->randomUser = $randomUser;
    }

    public function show()
    {
        $user = $this->randomUser->getRandomUser();

        if ($user && isset($user['results'][0])) {
            $result = $user['results'][0];

            // Konversi jenis kelamin
            $jenis_kelamin = ($result['gender'] === 'male') ? 1 : 2;

            // Gabungkan nama depan dan nama belakang
            $nama = $result['name']['first'] . ' ' . $result['name']['last'];

            // Ambil nama jalan
            $nama_jalan = $result['location']['street']['name'];

            // Ambil email
            $email = $result['email'];

            // Hitung angka kurang dari 7
            $angka_kurang = substr_count($result['login']['md5'], '0') +
                            substr_count($result['login']['md5'], '1') +
                            substr_count($result['login']['md5'], '2') +
                            substr_count($result['login']['md5'], '3') +
                            substr_count($result['login']['md5'], '4') +
                            substr_count($result['login']['md5'], '5') +
                            substr_count($result['login']['md5'], '6');

            // Hitung angka lebih dari 7
            $angka_lebih = substr_count($result['login']['md5'], '8') +
                           substr_count($result['login']['md5'], '9') +
                           substr_count($result['login']['md5'], 'a') +
                           substr_count($result['login']['md5'], 'b') +
                           substr_count($result['login']['md5'], 'c') +
                           substr_count($result['login']['md5'], 'd') +
                           substr_count($result['login']['md5'], 'e') +
                           substr_count($result['login']['md5'], 'f');

            // Buat profesi random dari huruf A sampai E
            $profesi = chr(rand(65, 69)); // ASCII values for A to E

            // Simpan semua data response sebagai JSON
            $plain_json = json_encode($result);

            // Simpan ke database
            $hasilResponse = HasilResponse::create([
                'jenis_kelamin' => $jenis_kelamin,
                'nama' => $nama,
                'nama_jalan' => $nama_jalan,
                'email' => $email,
                'angka_kurang' => $angka_kurang,
                'angka_lebih' => $angka_lebih,
                'profesi' => $profesi,
                'plain_json' => $plain_json,
            ]);

            return response()->json($hasilResponse);
        }

        return response()->json(['message' => 'Failed to retrieve data'], 500);
    }
}
