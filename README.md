# Assignment
-------------------
The assignment for this workshop is to create a very basic blog.


#### Creating your blog
-------------------
- Create a new rails app from the command line us: `rails new RGAdvanced01`. Make sure to have the latest version of rails installed. Use `rails -v` to check your version installed. The most recent version of rails is Rails 4.1.6
- Scaffold a Posts resource with the following attributes: name, email, title, text.

#### Adding Comments
-------------------
While scaffolding a model is easy. It will most of the time generate too many files and routes. So to create the comments for the post we are not gonna use the scaffolding generator but do everything by hand.
- Create a migration using rails generate for the comments model. Use the rails convention and name the create comments migration `CreateComments`. When you use this convention the migration generator will recognize that you're adding a new model and will add create_table to the migration. Now for you to add the following attributes in the migration: name, email, text.
- In your `routes.rb` nest your comments routes inside the post  resource. Make sure to only expose the routes you need.
- Add the `CommentsController` and add the actions we need: create, update, edit and new.
- Add the views for the comment `new`, `edit`, `_form`.
- Edit `post/show` view to also show the comments. And make a link to add a comment.

 
#### Adding Style
-------------------
We're gonna add some flavor by adding support for markdown to the blog posts. 
- Find a gem that can parse markdown text.
- Add it to the `Gemfile` and `bundle update` your app.
- Edit your `posts/show` view to properly parse the text to the markdown.

**Extra**
If this was too easy. Find a bootstrap gem to add to your application and pretty up your views.



### Extra / Homework
-------------------
- Add a user model. 
- Make the appropriate relations from users to posts and comments.
- Find and add a user authentication gem. A good gem will give you user authentication / registration etc.