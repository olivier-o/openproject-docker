#!/bin/bash

# Install ruby
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> /home/openproject/.profile
echo 'eval "$(rbenv init -)"' >> /home/openproject/.profile
source /home/openproject/.profile
git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build

rbenv install 2.3.1
rbenv rehash
rbenv global 2.3.1

# Install Node
git clone https://github.com/nodenv/nodenv.git ~/.nodenv
echo 'export PATH="$HOME/.nodenv/bin:$PATH"' >> ~/.profile
echo 'eval "$(nodenv init -)"' >> ~/.profile
source ~/.profile
git clone https://github.com/nodenv/node-build.git ~/.nodenv/plugins/node-build

nodenv install 4.4.7
nodenv rehash
nodenv global 4.4.7
