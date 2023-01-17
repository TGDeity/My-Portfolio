<?php

namespace App\Models\Student;

use App\Models\Teacher\Teachers;
use App\Models\Internship\Internships;


use Illuminate\Foundation\Auth\User as Authenticatable;

class Students extends Authenticatable
{
    protected $table = 'students';



    public function getInternship()
    {
        return $this->belongsTo(Internships::class, "internship_id", "internship_id");
    }

    public function getTeacher()
    {
        return $this->belongsTo(Teachers::class, "teacher_id", "id"); //Teachers tablosundaki teacher_id User Modelindeki id primary keyi ile ilişkilidir.
    }

    public function getDepartment()
    {
        return $this->belongsTo(Departments::class, "department_id", "id");
    }


    /**
     * The attributes that are mass assignable.
     *
     * @var array<int, string>
     */
    protected $fillable = [

        'number',
        'name',
        'authority_id',
        'department',
        'password',
    ];
}
