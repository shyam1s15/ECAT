<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStandardsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('standards', function (Blueprint $table) {
            $table->id();
            $table->char('standard_name', 30)->default('');

            $table->unsignedBigInteger('standard_id_for_org')->nullable();
            $table->foreign('standard_id_for_org')->references('id')->on('organizations')->onDelete('cascade');

            $table->unsignedBigInteger('standard_id_for_teachers')->nullable();
            $table->foreign('standard_id_for_teachers')->references('id')->on('teachers')->onDelete('cascade');

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
        Schema::dropIfExists('standards');
    }
}