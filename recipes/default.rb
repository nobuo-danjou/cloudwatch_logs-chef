src = node[:cloudwatch_logs][:source]
dest = node[:cloudwatch_logs][:install_dir]
install_file = File.join(dest, File.basename(src))

cfg = File.join(Chef::Config[:file_cache_path], 'cwlogs.cfg')
template cfg

directory dest do
  recursive true
end

remote_file install_file do
  source src
  mode "0755"
end

execute "Install CloudWatch Logs agent" do
  command "#{install_file} -n -r #{node[:cloudwatch_logs][:region]} -c #{cfg}"
  not_if { system "pgrep -f aws-logs-agent-setup" }
end
