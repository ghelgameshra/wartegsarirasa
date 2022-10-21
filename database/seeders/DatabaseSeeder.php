<?php

namespace Database\Seeders;

// use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Category;
use App\Models\Post;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        

        // User::factory()->create([
        //     'name' => 'Test User',
        //     'email' => 'test@example.com',
        // ]);

        // User::create([
        //     'name' => 'Rizky Andriawan',
        //     'email' => 'rizkyandriawan@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        // User::create([
        //     'name' => 'Devi Wahyuni',
        //     'email' => 'deviwahyuni@gmail.com',
        //     'password' => bcrypt('12345')
        // ]);

        User::factory(3)->create();

        Category::create([
            'name' => 'Web Programming',
            'slug' => 'web-programming'

        ]);

        Category::create([
            'name' => 'Web Design',
            'slug' => 'web-design'

        ]);

        Category::create([
            'name' => 'Personal',
            'slug' => 'personal'
            
        ]);

        Post::factory(20)->create();

        // Post::create([
        //     'title' => 'Judul Pertama',
        //     'slug' => 'judul-pertama',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore cumque officiis est eos quos temporibus incidunt adipisci, debitis, voluptate impedit nostrum deserunt repellat quaerat nulla? Ullam consequatur explicabo eos fuga dolorum, porro illo numquam nulla corrupti magni modi aliquid, fugit consequuntur mollitia provident tempore vero, recusandae ipsa nemo itaque est expedita beatae? Consequuntur id nostrum esse optio labore aliquid recusandae magnam obcaecati minima accusamus quo earum harum voluptates a, delectus, veniam sequi nesciunt adipisci corrupti fugiat explicabo nam distinctio nulla reprehenderit? Aperiam dolores accusamus totam quis enim distinctio modi excepturi obcaecati nam quia amet aliquam nihil voluptatem, provident at inventore.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Kedua',
        //     'slug' => 'judul-kedua',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore cumque officiis est eos quos temporibus incidunt adipisci, debitis, voluptate impedit nostrum deserunt repellat quaerat nulla? Ullam consequatur explicabo eos fuga dolorum, porro illo numquam nulla corrupti magni modi aliquid, fugit consequuntur mollitia provident tempore vero, recusandae ipsa nemo itaque est expedita beatae? Consequuntur id nostrum esse optio labore aliquid recusandae magnam obcaecati minima accusamus quo earum harum voluptates a, delectus, veniam sequi nesciunt adipisci corrupti fugiat explicabo nam distinctio nulla reprehenderit? Aperiam dolores accusamus totam quis enim distinctio modi excepturi obcaecati nam quia amet aliquam nihil voluptatem, provident at inventore.',
        //     'category_id' => 1,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Ketiga',
        //     'slug' => 'judul-ketiga',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore cumque officiis est eos quos temporibus incidunt adipisci, debitis, voluptate impedit nostrum deserunt repellat quaerat nulla? Ullam consequatur explicabo eos fuga dolorum, porro illo numquam nulla corrupti magni modi aliquid, fugit consequuntur mollitia provident tempore vero, recusandae ipsa nemo itaque est expedita beatae? Consequuntur id nostrum esse optio labore aliquid recusandae magnam obcaecati minima accusamus quo earum harum voluptates a, delectus, veniam sequi nesciunt adipisci corrupti fugiat explicabo nam distinctio nulla reprehenderit? Aperiam dolores accusamus totam quis enim distinctio modi excepturi obcaecati nam quia amet aliquam nihil voluptatem, provident at inventore.',
        //     'category_id' => 2,
        //     'user_id' => 1
        // ]);

        // Post::create([
        //     'title' => 'Judul Keempat',
        //     'slug' => 'judul-keempat',
        //     'excerpt' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit.',
        //     'body' => 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore cumque officiis est eos quos temporibus incidunt adipisci, debitis, voluptate impedit nostrum deserunt repellat quaerat nulla? Ullam consequatur explicabo eos fuga dolorum, porro illo numquam nulla corrupti magni modi aliquid, fugit consequuntur mollitia provident tempore vero, recusandae ipsa nemo itaque est expedita beatae? Consequuntur id nostrum esse optio labore aliquid recusandae magnam obcaecati minima accusamus quo earum harum voluptates a, delectus, veniam sequi nesciunt adipisci corrupti fugiat explicabo nam distinctio nulla reprehenderit? Aperiam dolores accusamus totam quis enim distinctio modi excepturi obcaecati nam quia amet aliquam nihil voluptatem, provident at inventore.',
        //     'category_id' => 2,
        //     'user_id' => 2
        // ]);
    }
}
