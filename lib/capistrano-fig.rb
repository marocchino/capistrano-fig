Capistrano::Configuration.instance(:must_exist).load do

  require 'capistrano/recipes/deploy/scm'
  require 'capistrano/recipes/deploy/strategy'

  # ===============================================
  # Override these variables in your local Capfile.
  # ===============================================

  set :scm, :git
  set :deploy_via, :remote_cache
  _cset :branch, "master"
  set :git_enable_submodules, true

  set :fig_bin, "fig"

  after "deploy:update_code", "fig:up"

  namespace :fig do

    desc "Rebuild the Docker containers with Fig."
    task :up do
      run "cd #{app_path} && #{fig_bin} up -d"
    end

  end

end
