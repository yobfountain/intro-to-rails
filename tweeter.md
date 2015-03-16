# Tweeter App

---

# Create the App

 1. `$ rails new tweeter`
 1. `$ cd tweeter`
 1. open Gemfile and remove the line that says:<br>  gem 'jbuilder', '~> 2.0'
 1. add the [Devise gem](https://github.com/plataformatec/devise): `gem 'devise'`
 1. ```$ bundle install```

---

# Create Chirps

 1. `$ rails generate scaffold chirp body user_id:integer`
 1. `$ rake db:migrate`

---

# Set your home page

Add the line below to your config/routes.rb page:<br> `root 'chirps#index'`

---

# Install devise

 1. `rails generate devise:install`
 1. `rails generate devise:views`
 1. `rails generate devise user`
 1. `rake db:migrate`
 1. Add the code below to views/application.html.erb and remove it from views/chirps/show.html.erb and views/chirps/index.html.erb

```html

<p id="notice"><%= notice %></p>
<p id="alert"><%= alert %></p>

```

---

# Add Username to User

 1. `rails generate migration AddUsernameToUsers username`
 1. `rake db:migrate`
 1. replace the code controllers/application_controller.rb with the code below

```ruby
class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end
end

```

---

# Setup Your Associations

1. Put this line of code in models/user.rb: `has_many :chirps`
1. Put this line of code in models/chirp.rb: `belongs_to :user`

---

# Add Bootstrap

Add these lines to the head section of views/application.html.erb

```html
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
```

---

# Add a Little Style

Replace the contents of the views/application.html.erb file with the contents of the link below:

https://gist.github.com/Fountain/ed066778385e14e76cef

---

# Save Users for Chirps

1. Delete the code for the user id from the views/chirps/_form.html.erb file
2. Make the set_chirp method in your chirps_controller.rb file look like the method below:

```ruby 
    def chirp_params
      params.require(:chirp).permit(:body).merge(user: current_user)
    end
```

