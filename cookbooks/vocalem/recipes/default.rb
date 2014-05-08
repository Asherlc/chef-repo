#
# Cookbook Name:: vocalem
# Recipe:: default
#
# Copyright 2014, East Bay Software
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'build-essential::default'

include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"
rbenv_ruby "2.1.1"
rbenv_gem "bundler" do
  ruby_version "2.1.1"
end

include Opscode::OpenSSL::Password
set_unless[:my_password] = secure_password

include_recipe "database::postgresql"
postgresql_database 'vocalem_production' do
  connection(
    :host      => '127.0.0.1'
    :port      => 5432,
    :username  => 'deploy'
  )
  action :create
end
