<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateTeachersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('teachers', function (Blueprint $table) {
            $table->id();
            $table->char('faculty_name', 200)->default('');
            // $table->char('', 200)->default('');
            $table->char('email', 60)->default('');
            // $table->char('', 60)->default('');
            $table->text('address');
            $table->char('contact', 13)->default('');
            $table->text('img_url')->nullable();
            $table->text('description')->nullable();


            $table->unsignedBigInteger('teacher_id_for_organization')->nullable();
            $table->foreign('teacher_id_for_organization')->references('id')->on('organizations')->onDelete('cascade');

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
        Schema::dropIfExists('teachers');
    }
}