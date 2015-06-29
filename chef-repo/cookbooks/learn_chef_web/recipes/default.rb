#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
#
# Copyright (c) 2015 The Authors, All Rights Reserved.
package 'httpd'

service 'httpd' do
 action [:enable, :start]
end

template '/var/www/html/index.hmtl' do
source 'index.html.erb'
end

service 'iptables' do
action  :stop
end
