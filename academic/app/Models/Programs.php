<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Programs extends Model
{


    public  static function getProgramNamesID($program_names_id)
    {


        return  Program_names::get()->where('id', $program_names_id)->first();
    }

    /*** 
     * 
     * Ön Lisans işlemleri
     
     */
    public static function getUndergraduatePrograms($program_name_id)
    {

        /*
         *programs tablosundaki program_name_id , program_names tablosundaki program_name_id kolonu ile ilişkilidir.
         *ilişki kurulduktan sonra programs tablosundaki id kısmı ve program_names tablosundaki program_name kısmı döndürülecek 
           ve programın ilişkili olduğu program isimlerini ekrana getirebileceğiz. son olarak degree_id ile derecesi 2(OnLisans) olan programları çekeceğiz
         */
        $programName = self::leftJoin('program_names', 'program_name_id', '=', 'program_names.id')
            ->select('programs.id', 'program_names.program_name')
            ->where('program_name_id', $program_name_id);
        /*** 
         * programs tablosundaki lesson_id lessons tablosundaki program_name_id ile ilişkilidir.
         * 
         */
        $lessonName = self::leftJoin('lessons', 'programs.program_name_id', '=', 'lessons.program_name_id')
            ->select('programs.id',  'lessons.*')
            ->where('lessons.program_name_id', $program_name_id);
        return array($programName->get(), $lessonName->get());
    }



    public static function getAssociatePrograms($program_name_id)
    {
        $programName = self::leftJoin('program_names', 'program_name_id', '=', 'program_names.id')
            ->select('programs.id', 'program_names.program_name')
            ->where('program_name_id', $program_name_id);
        /*** 
         * programs tablosundaki lesson_id lessons tablosundaki program_name_id ile ilişkilidir.
         * 
         */
        $lessonName = self::leftJoin('lessons', 'programs.program_name_id', '=', 'lessons.program_name_id')
            ->select('programs.id',  'lessons.*')
            ->where('lessons.program_name_id', $program_name_id);
        return array($programName->get(), $lessonName->get());
    }
}
