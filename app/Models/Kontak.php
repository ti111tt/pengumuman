<?php 
namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Kontak extends Model
{
    use HasFactory;

    protected $table = 'kontak'; // Nama tabel di database
    protected $fillable = ['nama', 'email', 'no_telepon', 'role']; // Kolom yang diizinkan
}

