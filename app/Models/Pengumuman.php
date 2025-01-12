<?php
namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Pengumuman extends Model
{
    protected $table = 'pengumuman'; // Nama tabel di database
    protected $fillable = ['judul', 'isi', 'pengirim_id', 'target', 'kelas_id']; // Kolom yang diizinkan untuk mass assignment

    // Nonaktifkan timestamps
    public $timestamps = false;

    public function kontak()
    {
        return $this->belongsTo(Kontak::class, 'pengirim_id');
    }
}
