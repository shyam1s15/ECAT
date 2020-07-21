<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStudentsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();

            $table->unsignedBigInteger('student_id_for_subjects')->nullable();
            $table->foreign('student_id_for_subjects')->references('id')->on('subjects')->onDelete('cascade');

            $table->char('stu_name', 200)->default('');
            // $table->char('', 200)->default('');
            $table->char('email', 60)->default('');
            // $table->char('password', 60)->default('');
            $table->text('address');
            $table->text('description')->nullable();
            $table->char('contact', 13)->default('');
            $table->text('img_url')->nullable();

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
        Schema::dropIfExists('students');
    }
}