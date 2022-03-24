$worker = 2
$timeout = 30
#$app_root = File.expand_path('../../', __FILE__)
#$listen = File.expand_path 'tmp/sockets/unicorn.sock', $app_root
#$pid = File.expand_path 'tmp/pids/unicorn.pid', $app_root
#$std_log = File.expand_path 'log/unicorn.log', $app_root

$app_root = '/var/www/rails-app/'
$listen = '/var/www/rails-app/tmp/sockets/unicorn.sock'
$pid = '/var/www/rails-app/tmp/pids/unicorn.pid'
$std_log = '/var/www/rails-app/log/unicorn.log'


puts $app_root
puts $listen

worker_processes $worker
working_directory $app_root
stderr_path $std_log
stdout_path $std_log
timeout $timeout
listen $listen
pid $pid

preload_app true

#before_fork do |server, worker|
#　defined?(ActiveRecord::Base) and ActiveRecord::Base.connection.disconnect!
#　old_pid = "#{server.config[:pid]}.oldbin"
#　if old_pid != server.pid
#　　begin
#　　　Process.kill "QUIT", File.read(old_pid).to_i
#　　rescue Errno::ENOENT, Errno::ESRCH
#　　end
#　end
#end

#after_fork do |server, worker|
#　defined?(ActiveRecord::Base) and ActiveRecord::Base.establish_connection
#end
