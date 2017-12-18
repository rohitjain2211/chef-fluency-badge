#
# Cookbook:: postgresql
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

package 'postgresql-server' do
	notifies :run, 'execute[postgresql-init]'
end

execute 'postgresql-init' do
	command 'postgresql-setup init-db'
	action :nothing
end

service 'psotgresql' do
	action[:enable, :start]
end

