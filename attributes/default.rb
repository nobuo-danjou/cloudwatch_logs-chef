default[:cloudwatch_logs][:source] = 'https://s3.amazonaws.com/aws-cloudwatch/downloads/awslogs-agent-setup-v1.0.py'
default[:cloudwatch_logs][:install_dir] = '/opt/aws/cloudwatch'
default[:cloudwatch_logs][:logs] = []
default[:cloudwatch_logs][:region] = 'us-east-1'
default[:cloudwatch_logs][:state_file] = '/var/awslogs/state/agent-state'
