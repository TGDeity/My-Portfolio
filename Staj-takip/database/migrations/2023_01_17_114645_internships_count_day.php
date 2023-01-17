<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('internships_count_day', function (Blueprint $table) {
            $table->id();
            $table->text('description_stu');
            $table->text('description_emp');
            $table->string('internship_id', 255);
            $table->string('student_id', 255);
            $table->integer('department_id');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('internships_count_day');
    }
};
