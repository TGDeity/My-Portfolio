<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Str;
use IntlChar;

class UserSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        /*  DB::table('students')->insert([
            'name' => Str::random(10),
            'internship_id' => "D-" . rand(103, 200) . Str::random(0),
            'student_id' => "STU" . rand(3, 100) . Str::random(0),
            'teacher_id' => rand(3, 100) . Str::random(0),
            'teacher_id' => rand(3, 100) . Str::random(0),
            'department_id' => rand(3, 100) . Str::random(0),

        ]);  */
    }
}
