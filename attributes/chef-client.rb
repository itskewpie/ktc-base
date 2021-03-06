#
#
# Chef-client tuning
#
#
include_attribute "chef-client"

default[:chef_client][:splay]      = "60"
default[:chef_client][:interval]   = "300"
default[:chef_client][:server_url] = "https://chef11"

default[:chef_client][:cron][:use_cron_d] = true
default[:chef_client][:cron][:hour] = "*"
default[:chef_client][:cron][:minute] = "*/4"
