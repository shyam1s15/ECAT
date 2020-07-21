<?php

use Illuminate\Database\Seeder;

class DocQuestionSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        factory(App\doc_question::class, 10)->create();
    }
}