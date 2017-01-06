#
# Cookbook Name:: sample
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
value = data_bag_item('secrets', 'sample')['value']
execute 'sample' do
  command "echo #{value}"
end
