default[:cloud_watch_logs][:source] = 'https://s3.amazonaws.com/aws-cloudwatch/downloads/awslogs-agent-setup-v1.0.py'
default[:cloud_watch_logs][:install_dir] = '/opt/aws/cloudwatch'
default[:cloud_watch_logs][:logs] = []
default[:cloud_watch_logs][:region] = 'us-east-1'
default[:cloud_watch_logs][:state_file] = '/var/awslogs/state/agent-state'
