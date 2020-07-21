<?php

use Illuminate\Database\Seeder;

class DocAnswersSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        factory(App\doc_answers::class, 10)->create();
    }
}