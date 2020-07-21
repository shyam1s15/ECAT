<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDocsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('docs', function (Blueprint $table) {
            $table->id();
            // belongs to teacher
            $table->unsignedBigInteger('owner_id_for_teachers')->nullable();
            $table->foreign('owner_id_for_teachers')->references('id')->on('teachers')->onDelete('cascade');
            // belongs to student
            $table->unsignedBigInteger('owner_id_for_students')->nullable();
            $table->foreign('owner_id_for_students')->references('id')->on('students')->onDelete('cascade');
            // belongs to organization
            $table->unsignedBigInteger('owner_id_for_organizations')->nullable();
            $table->foreign('owner_id_for_organizations')->references('id')->on('organizations')->onDelete('cascade');

            // belong to subject(for recommendatiton)
            $table->unsignedBigInteger('recommend_id_for_subjects')->nullable();
            $table->foreign('recommend_id_for_subjects')->references('id')->on('subjects')->onDelete('cascade');

            // -------------------------

            $table->char('doc_name', 200)->default('');
            $table->char('doc_title', 200)->default('');
            $table->text('doc_url')->nullable();
            $table->text('description')->nullable();

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
        Schema::dropIfExists('docs');
    }
}