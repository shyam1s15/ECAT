<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDocAnswersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('doc_answers', function (Blueprint $table) {
            $table->id();

            $table->integer('votes')->unsigned()->nullable()->default(0);
            $table->text('answer')->nullable();
            $table->unsignedBigInteger('docQuesAns_id_for_docQuestion')->nullable();
            $table->foreign('docQuesAns_id_for_docQuestion')->references('id')->on('doc_questions')->onDelete('cascade');

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
        Schema::dropIfExists('doc_answers');
    }
}