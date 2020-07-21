<?php

use Illuminate\Database\Seeder;

class DocMcqSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        factory(App\doc_mcq::class, 10)->create();

    }
}