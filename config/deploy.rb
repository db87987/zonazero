require 'rvm/capistrano'
require 'bundler/capistrano'

load 'deploy/assets'

server "5.178.80.26", :web, :app, :db, primary: true

set :user, "user"
set :application, "zonazero"
set :deploy_to, "/home/user/projects/#{application}"
set :deploy_via, :remote_cache
set :use_sudo, false

set :scm, "git"
set :repository, "git@github.com:babrovka/zonazero.git"
set :branch, "master"

default_run_options[:pty] = true
ssh_options[:forward_agent] = true

after "deploy:update_code", :copy_database_config
 task :copy_database_config, roles => :app do
   db_config = "#{shared_path}/database.yml"
   run "cp #{db_config} #{release_path}/config/database.yml"
end

after "deploy", "deploy:cleanup"