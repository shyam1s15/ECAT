<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDocQuestionsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doc_questions', function (Blueprint $table) {
            $table->id();

            $table->text('question');
            $table->text('hint')->nullable();
            $table->integer('votes')->nullable()->default(0);
            $table->unsignedBigInteger('docQuestion_id_for_doc')->nullable();
            $table->foreign('docQuestion_id_for_doc')->references('id')->on('docs')->onDelete('cascade');

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
        Schema::dropIfExists('doc_questions');
    }
}