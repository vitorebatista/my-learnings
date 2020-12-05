# README

# Steps

Create project using rails cli
```sh
rails new Contacts --api
```

Add api version control in `app/controllers/api/vi/api_controller.rb`

add `gem 'rack-cors'`, `gem 'rack-attack'`, `gem 'devise'` in Gemfile, than call `bundle install`

```sh
rails generate devise:install
rails generate devise User
rails g migration addNameToUser name:string
rails db:migrate
```

add `gem 'simple_token_authentication'` 

```sh
rails g migration add_authentication_token_to_users "authentication_token:string{30}:uniq"
rake db:migrate
```

Now you can create a user:

```sh
rails c
user = User.create(email: 'vitorebatista@gmail.com', password: '123456')
```

If you have any error, you can check with:
```sh
user.errors.full_messages.to_sentence
```

```sh
rails g model Contact name:string email:string phone:string description:text user:references
rails g controller api/v1/contacts
```