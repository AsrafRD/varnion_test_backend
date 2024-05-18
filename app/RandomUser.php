<?php

namespace App;

use Illuminate\Support\Facades\Http;

class RandomUser
{
    protected $baseUrl;

    public function __construct()
    {
        $this->baseUrl = 'https://randomuser.me/api/';
    }

    public function getRandomUser()
    {
        $response = Http::get($this->baseUrl);

        if ($response->successful()) {
            return $response->json();
        }

        return null;
    }
}
