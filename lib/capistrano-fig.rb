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

  after "deploy:create_symlink", "fig:kill", "fig:up"

  namespace :fig do

    desc "Start the Docker containers with Fig."
    task :up do
      run "cd #{release_path} && #{fig_bin} up -d"
    end

    desc "Kill the Docker containers with Fig."
    task :kill do
      run "cd #{previous_release} && #{fig_bin} kill"
    end

  end

end
