<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\organization;
use Faker\Generator as Faker;

$factory->define(organization::class, function (Faker $faker) {
    return [
        //
        "org_name"=>$faker->company,
        "head_name"=>$faker->name,
        "email"=>$faker->unique()->safeEmail,
        "password"=>Str::random(10),
        "address"=>$faker->address,
        "description"=>$faker->catchPhrase,
        "contact"=>Str::random(10),
        "img_url"=>"https://source.unsplash.com/300x300/?campus,college",
    ];
});