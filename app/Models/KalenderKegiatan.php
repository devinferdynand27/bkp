<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class KalenderKegiatan extends Model
{
    use HasFactory;

    public function kategori_kegiatan()
    {
        return $this->belongsTo(
            KategoriKegiatan::class,
            'kkid'
        );
    }
}
