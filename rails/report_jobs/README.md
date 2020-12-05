# README

```sh
rails new report_jobs
```

```sh
rails webpacker:install 
rails s
```
See `http://localhost:3000/sidekiq`

```sh
rails g controller Reports index create
rails g job Report
```

```sh
bundle exec sidekiq 
```

Go to `http://localhost:3000/reports` and click many times on the button. Check again `http://localhost:3000/sidekiq` e see all jobs


