# ASSESSMENT 5: INTRO TO RAILS
## Interview Practice Questions

Answer the following questions. First, without external resources. Challenge yourself to answer from memory. Then, research the question to expand on your answer. Even if you feel you have answered the question completely on your own there is always something more to learn.

1. MVC (Model View Controller) is a pattern for the architecture of a software program. Give a brief description of each component and describe how Ruby on Rails handles MVC.

  Your answer: Model deals with the back end. view is the output and the controller connects the two 

  Researched answer:
1. A model is data used by a program. This may be a database, file, or a simple object, such as an icon or a character in a video game.
2. A view is the means of displaying objects within an application. Examples include displaying a window or buttons or text within a window. It includes anything that the user can see.
3. A controller updates both models and views. It accepts input and performs the corresponding update. For example, a controller can update a model by changing the attributes of a character in a video game. It may modify the view by displaying the updated character in the game.



2. Using the information given, fill in the blanks to complete the steps for creating a new view in a Rails application.

  Step 1: Create the _________ in the file config/routes.rb
  Create the about route in the file config/routes.rb
  ```
  get '/about' => 'statics#about'
  ```

  Step 2: Create the ____________ in the file _____________
   Create the StaticsController in the file app/controller
  ```
  class StaticsController < ApplicationController
    def about 
      render about.html.erb
    end
  end
  ```

  Step 3: Create the View in the file ______
  code: 
  
  about.html.erb

  ```
  <div>This is the About page!</div>
  ```


3a. Consider the Rails routes below. Describe the responsibility of each route.


/users/       method="GET"     # :controller => 'users', :action => 'index'

  gets called when the 'users' page loads. The method then goes to the Controller and runs the def index method

/users/1      method="GET"     # :controller => 'users', :action => 'show'

 gets called when the /users/1 page loads. then goes to the UsersController and runs the def show. 

/users/new    method="GET"     # :controller => 'users', :action => 'new'

 gets called when the /users/new page loads and is the page where new users can be created. Once again, goes to the UsersController and runs the def new.

/users/       method="POST"    # :controller => 'users', :action => 'create'

 gets called after a user is created and loads the /users/ page. Goes to the UsersController and runs the def create

/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
gets called when the /users/1/edit-page loads and is the page where a user's data can be edited goes to the UsersController and runs the def edit

/users/1      method="PUT"     # :controller => 'users', :action => 'update'

user is updated from the /users/1/edit page then goes to the UsersController and runs the def update
update/patch

/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

called after a user is deleted from the /users/1 page then goes to the UsersController and runs the def destroy which is a method to delete/destroy


3b. Which of the above routes must always be passed params and why?

/users/1      method="GET"     # :controller => 'users', :action => 'show'
/users/1/edit method="GET"     # :controller => 'users', :action => 'edit'
/users/1      method="PUT"     # :controller => 'users', :action => 'update'
/users/1      method="DELETE"  # :controller => 'users', :action => 'destroy'

the methods need to know which user is being either shown, edited, updated, or destroyed.

4. What is the public folder used for in Rails?

  Your answer: holds all files accessible to the public 

  Researched answer:
  hold files that dont effect the backend 
  



5. Write a rails route for a controller called "main" and a page called "game" that takes in a parameter called "guess"

GET 'game:guess' => 'main#game'


6. In an html form, what does the "action" attribute tell you about the form? How do you designate the HTTP verb for the form?

  Your answer: action in this case should tell where that form should go

  Researched answer:
   the process of a form with an action and using the get verb
<form action="/url" method="get">
    ...
  </form> 



7. Name two rails generator commands and what files they create:

  Your answer:
rails g model --- creates the rails model which produces the backend files 
rails db:create --- create your own database 
  Researched answer:


8. Rails has a great community and lots of free tutorials to help you learn. Choose one of these resources and look through the material for 10-15 min. List three new things you learned about Rails:
- [Ruby on Rails Tutorial](https://www.tutorialspoint.com/ruby-on-rails/index.htm)
- [Rails for Zombies](http://railsforzombies.org)
- [Rails Guides](http://guides.rubyonrails.org/getting_started.html)

1.

2.

3.

9. STRETCH: What are cookies? What is the difference between a session and a cookie?

  Your answer:

  Researched answer:
