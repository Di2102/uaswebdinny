<?php

namespace App\Models;

use CodeIgniter\Model;

class Dashboard_model extends Model
{
	
    public function dashboard_mahasiswa(){ 
		$query = $this->db->query("select nim ,count(nim) as jumlah_mahasiswa from tab_mahasiswa");
	    return $query->getRowArray();
	}
	public function dashboard_prodi(){ 
		$query = $this->db->query("select id ,count(id) as jumlah_prodi from tab_prodi");
	    return $query->getRowArray();
	}
	public function dashboard_agama(){ 
		$query = $this->db->query("select id ,count(id) as jumlah_agama from tab_agama");
	    return $query->getRowArray();
	}
}