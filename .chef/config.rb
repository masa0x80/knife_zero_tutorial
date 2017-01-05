cookbook_path %w(cookbooks site-cookbooks)
environment_path 'environments'
node_path 'nodes'
role_path 'roles'
data_bag_path 'data_bags'
local_mode true

knife[:ssh_attribute] = 'knife_zero.host'
knife[:secret_file]   = File.join(File.dirname(__FILE__), 'data_bag_key')
knife[:encrypt]       = true
knife[:use_sudo]      = true

knife[:default_attribute_whitelist]   = []
knife[:override_attribute_whitelist]  = []
knife[:automatic_attribute_whitelist] = []
knife[:normal_attribute_whitelist]    = ['knife_zero']
