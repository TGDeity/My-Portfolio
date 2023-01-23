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
        Schema::create('progam_names', function (Blueprint $table) {
            $table->id();
            $table->text('program_name');
            $table->text('program_leader')->nullable();
            $table->text('telephone')->nullable();
            $table->text('email')->nullable();
            $table->text('program_purpose')->nullable();
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
        Schema::dropIfExists('progam_names');
    }
};
