<?php

namespace App\Models\Internship;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Internships extends Model
{
    protected $table = "internships";


    public function getInternshipCountDay()
    {

        return $this->belongsTo(Internships_count_day::class, "internship_id", "internship_id");
    }
}
