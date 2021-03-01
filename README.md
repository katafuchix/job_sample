# README

```
bundler init
rails new . --skip-action-mailer --skip-active-storage --skip-action-cable
bundle install --path vendor/bundle
```

```
bin/rails generate job after_post 
```

- config/application.rb

```
config.active_job.queue_adapter = :sidekiq
```

```
% redis-server
% bundle exec sidekiq
% bin/rails s
```

## centOS

```
# dnf install redis
# systemctl enable --now redis
```

* ...
# job_sample
