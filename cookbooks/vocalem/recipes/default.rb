#
# Cookbook Name:: vocalem
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

# Ruby stuff
rbenv_ruby "2.1.1"

rbenv_gem "bundler" do
  ruby_version "2.1.1"
end
