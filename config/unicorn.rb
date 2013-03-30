root = "/home/deploy/capistrano/current"
worker_processes 4
working_directory root # available in 0.94.0+
listen "/tmp/unicorn.capistrano.sock", :backlog => 64
listen 8081, :tcp_nopush => true
timeout 30
pid "#{root}/tmp/pids/unicorn.pid"
stderr_path "#{root}/log/unicorn.stderr.log"
stdout_path "#{root}/log/unicorn.stdout.log"
