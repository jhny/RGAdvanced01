Intro
---------------------
At the end of this workshop you should:

- Have Better understanding of REST
- Know Controller best practices
- Find the right gems to use

Blog
----------------
What is a blog and what should it look like? It should have a model for posts with several attributes like title, content and publish_date
(plaatje? model + eindresultaat)

REST
-------------------
REST is a convention used for web site design. REST was introduced to Rails a few years ago. In Rails it means you have 6 or 7 actions in each controller and the way these actions are approached by URL are always the same for any resource.

In our blog example, Posts are a resource. To get access to posts, you can use the http methods: GET, POST, PUT and DELETE

REST request path 	| Rails action name | Description
--------------------|-------------------|-------------
GET /posts 			    | index 			      | Render a list of all post
GET /posts/new 		  | new 				      | Render a form for creating a single new post
POST /posts 		    | create 			      | Create a single new post from the received data
GET /posts/1 		    | show 				      | Render a single existing post
GET /posts/1/edit 	| edit 				      | Render a form for editing a single existing post
PUT /posts/1 		    | update 			      | Update a single existing post based on the received data
DELETE /posts/1 	  | destroy 			    | Destroy a single existing post

because of this convention of 6/7 methods, it is easier to understand any other rails application.

Conventions: (best practices)
---------------------------
It allows new developers to learn a unknown system easier.
Promotes uniformity. The approach to solving problems with code will be more the same.
Requires familiarity. If you are not familiar with the used conventions or are against using them, they will work against you.

Custom Actions
----------------------
How can you add custom actions like for example if you want to
- add a published field to posts
- create controller methods on POST to publish and unpublish
- only show published posts by default on the /posts url
- add a url to see unpublished posts

Gems
--------------------
> Package manager (gem install rails)
> Added to gemfile
> downloaded from rubygems with bundler
> Add functionality to your project with minor configuration (authentication, authorization, admin pages)
> Reuse code across projects (for example login or a css styling framework)

Rails is the most used gem, it adds a web MVC framework to ruby.
How do gems work? What happens if I add a gem to rails?
What can gems be used for?
What are the most popular ones? How can I find gems? How to see if a gem is any good?
Gem file, gem lock file, gem update, gem version lock, solve dependancy issues (bundler?)