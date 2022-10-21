<?php

namespace App\Models;


class Post
{
    private static $blog_posts = [
        [
            "title" => "Judul Post Pertama",
            "slug" => 'judul-post-pertama',
            "author" => "Rizky Andriawan",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis cupiditate corporis officiis, commodi consectetur nulla vero dicta. Facere similique rerum id nesciunt atque provident cum velit maxime totam laudantium, omnis quia temporibus tenetur aliquid asperiores quod enim dignissimos doloremque rem eum. Facilis quisquam magni dolorum facere ab iusto. Exercitationem, voluptatem? Laboriosam eum vel quo maiores nam quas id assumenda quia sint libero consequuntur quam quidem nulla obcaecati minima inventore expedita similique, aliquid dolore suscipit modi dolorem, tempore, necessitatibus rem. Deserunt, facilis aperiam sit cum minus ipsum non eum debitis perferendis dolor asperiores, mollitia, suscipit repellendus iure ex? Voluptatibus, aspernatur quod."
        ],
        [
            "title" => "Judul Post Kedua",
            "slug" => 'judul-post-kedua',
            "author" => "Andriawan",
            "body" => "Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis cupiditate corporis officiis, commodi consectetur nulla vero dicta. Facere similique rerum id nesciunt atque provident cum velit maxime totam laudantium, omnis quia temporibus tenetur aliquid asperiores quod enim dignissimos doloremque rem eum. Facilis quisquam magni dolorum facere ab iusto. Exercitationem, voluptatem? Laboriosam eum vel quo maiores nam quas id assumenda quia sint libero consequuntur quam quidem nulla obcaecati minima inventore expedita similique, aliquid dolore suscipit modi dolorem, tempore, necessitatibus rem. Deserunt, facilis aperiam sit cum minus ipsum non eum debitis perferendis dolor asperiores, mollitia, suscipit repellendus iure ex? Voluptatibus, aspernatur quod. Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reiciendis cupiditate corporis officiis, commodi consectetur nulla vero dicta. Facere similique rerum id nesciunt atque provident cum velit maxime totam laudantium, omnis quia temporibus tenetur aliquid asperiores quod enim dignissimos doloremque rem eum. Facilis quisquam magni dolorum facere ab iusto. Exercitationem, voluptatem? Laboriosam eum vel quo maiores nam quas id assumenda quia sint libero consequuntur quam quidem nulla obcaecati minima inventore expedita similique, aliquid dolore suscipit modi dolorem, tempore, necessitatibus rem. Deserunt, facilis aperiam sit cum minus ipsum non eum debitis perferendis dolor asperiores, mollitia, suscipit repellendus iure ex? Voluptatibus, aspernatur quod. "
        ]
    ];

    public static function all(){
        return collect(self::$blog_posts);
    }   

    public static function find($slug){
        $posts = static::all();

        return $posts->firstWhere('slug', $slug);

    }


}
