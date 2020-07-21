<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrganizationsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('organizations', function (Blueprint $table) {
            $table->id();
            $table->char('org_name', 200)->default('');
            $table->char('head_name', 200)->default('');
            $table->char('email', 60)->default('');
            $table->char('password', 60)->default('');
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
        Schema::dropIfExists('organizations');
    }
}