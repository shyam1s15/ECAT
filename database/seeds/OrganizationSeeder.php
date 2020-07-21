<?php

use Illuminate\Database\Seeder;

class OrganizationSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
        // factory(App\organization::class, 10)->create();
        factory(App\organization::class, 1)->create()->each(function ($org) {
            $org->teachers()->saveMany(factory(App\teachers::class,15)->create());
            $org->docs()->saveMany(factory(App\docs::class,20)->create());
            $org->standards()->saveMany(
                factory(App\standards::class,12)->create()->each(
                    function($std){
                        $std->subjects()->saveMany(
                          factory(App\subjects::class,7)->create()->each(function($subject){
                            $subject->students()->saveMany(factory(App\students::class,15)->create());
                          })
                        );
                    }
                )
            );
        });
    }
}