rails_env = ENV.fetch('RAILS_ENV') { 'development' }

# In development, prefer single-mode to avoid stale asset digests when using Propshaft
# with preloaded, multi-worker Puma.
workers ENV.fetch('WEB_CONCURRENCY') { rails_env == 'development' ? 0 : 2 }
threads_count = ENV.fetch('RAILS_MAX_THREADS') { 5 }
threads threads_count, threads_count

preload_app! unless rails_env == 'development'

port        ENV.fetch('PORT') { 3000 }
environment rails_env

before_fork do
  ActiveRecord::Base.connection_pool.disconnect! if defined?(ActiveRecord)
end

on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

plugin :tmp_restart

pidfile ENV['PIDFILE'] if ENV['PIDFILE']
