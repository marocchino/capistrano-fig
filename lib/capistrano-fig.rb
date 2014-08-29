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

  after "deploy:update_code", "fig:build"

  namespace :fig do

    desc "Rebuild the Docker containers with Fig."
    task :backupdb, :on_error => :continue do
      run "cd #{app_path} && #{fig_bin} build"
    end

  end

end
