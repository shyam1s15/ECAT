<?php

/** @var \Illuminate\Database\Eloquent\Factory $factory */

use App\docs;
use Faker\Generator as Faker;

$factory->define(docs::class, function (Faker $faker) {
    return [
        //
        "doc_name"=>$faker->name,
        "doc_title"=>$faker->word,
        "doc_url"=> asset("storage/assets/materials") . "/sampleDoc" . rand(1,12),
        "description"=>$faker->catchPhrase,
    ];
});