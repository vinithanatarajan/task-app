#!/bin/bash

# Always explicitly ask for bash not sh as default shell on Codeship is not bash

set -e

# make rvm command available in this script
source ~/.rvm/scripts/rvm

# install appropriate ruby via rvm
test -e .ruby-version
rvm use `cat .ruby-version` --install

gem install bundler
bundle install

# package all dependencies for deployment to servers
bundle package --all
