# Rails 6.1 + Sprockets dummy app verification commands

Run from this folder (`deliverables/rails_6_1_sprockets_dummy`):

```bash
bundle config set --local path ./bundle
rm -f Gemfile.lock
rm -rf bundle
bundle install --jobs 3 --retry 1
bundle exec rails runner 'puts Rails.application.class.name'
bundle exec rails generate bootstrap:install static --trace
RAILS_ENV=production SECRET_KEY_BASE=audit bundle exec rails assets:precompile --trace
bundle exec rails server -p 3001
```

Optional quick checks:

```bash
bundle exec rake assets:clobber
ls -lah public/assets
curl -i http://127.0.0.1:3001/
```
