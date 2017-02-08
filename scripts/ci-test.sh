#!/bin/bash

# Always explicitly ask for bash not sh as default shell on Codeship is not bash

set -e

# make rvm command available in this script
source ~/.rvm/scripts/rvm

# use rvm to load the appropriate ruby version
test -e .ruby-version
rvm use `cat .ruby-version` --install

gem install  --no-rdoc --no-ri 'brakeman' 'bundler-audit'

echo "Running bundle-audit..."
bundle-audit check --update

echo "Running brakeman..."
brakeman --run-all-checks --exit-on-warn .

echo "Running rubocop"
bundle exec rubocop

echo "Running scss-lint"
bundle exec scss-lint

echo "Running specs"
bundle exec rake db:test:prepare
bundle exec rspec --format doc

(
  cd ember-frontend

  echo "Running ember tests"
  ember test

  echo "Packaging Ember app for deploy"
  npm run build-for-rails
)