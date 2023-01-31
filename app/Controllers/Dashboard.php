<?php

namespace App\Controllers;
use Config\Services;
use App\Models\Dashboard_model;

class Dashboard extends BaseController
{
    public function index()
    {
        $m_dashboard        = new Dashboard_model();
        $data = [
            'location'     => 'dashboard',
            'total_mahasiswa' => $m_dashboard->dashboard_mahasiswa(),
            'total_prodi' => $m_dashboard->dashboard_prodi(),
            'total_agama' => $m_dashboard->dashboard_agama()
        ];
        return view('dashboard', $data);
    }
}