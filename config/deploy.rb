# config valid only for Capistrano 3
lock "3.10.2"


# Configuration
set :rbenv_type, :user
set :rbenv_ruby, "2.5.0"

set :application, "auctions"

set :repo_url, "https://github.com/microweb10/auctions.git"
set :git
set :branch, "master"
set :ssh_options, forward_agent: true

set :deploy_to, "/home/deployer/apps/auctions"
set :user, "deployer"
set :use_sudo, false
set :deploy_via, :remote_cache
set :keep_releases, 3

set :stage, :production
set :rails_env, "production"
set :app_server, :puma
set :domain, "auctions.microweb10.com"

set :linked_files, %w{config/database.yml config/application.yml public/favicon.ico}
set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system storage}

server "auctions.microweb10.com", user: "deployer", roles: %w{web app db}

SSHKit.config.command_map[:rake] = "bin/rake"

# Tasks
namespace :deploy do

  desc "Start application"
  task :start do
    on roles(:app), in: :sequence, wait: 5 do
      sudo "start puma app=#{deploy_to}/current"
    end
  end

  desc "Stop application"
  task :stop do
    on roles(:app), in: :sequence, wait: 5 do
      sudo "stop puma app=#{deploy_to}/current"
    end
  end

  desc "Restart application"
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      sudo "restart puma app=#{deploy_to}/current"
    end
  end

end
