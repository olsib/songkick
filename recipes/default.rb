#
# Cookbook Name:: nginx
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'install-epel-release' do
  ignore_failure true
  command 'yum -y install https://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-9.noarch.rpm'
end

package 'nginx' do
  action :install
end

service 'nginx' do
  action [ :enable ]
end
