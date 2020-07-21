<?php

use Illuminate\Database\Seeder;

class StandardsSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        factory(App\standards::class, 10)->create();

    }
}