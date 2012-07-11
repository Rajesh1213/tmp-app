set :application, "set your application name here"
set :repository,  "set your repository location here"

require "bundler/capistrano"

set :normalize_asset_timestamps, false
set :stages, %w(dev beta live)
set :default_stage, "live"
require 'capistrano/ext/multistage'

load('deploy')
load('deploy/assets')

set :scm, "git"
set :branch, "master"
set :repository,  "git@scm.g33k.in:learnsocial/learnsocial.git"
set :deploy_via,  :remote_cache 
set :keep_releases, 4


desc 'restart nginx'
task :nginx, :roles => :app do 
   run "sudo /etc/init.d/ngx restart"
end

set :scm, 'git'
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "your web-server here"                          # Your HTTP server, Apache/etc
role :app, "your app-server here"                          # This may be the same as your `Web` server
role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
role :db,  "your slave db-server here"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end