#
# Cookbook:: apache
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
package 'apache2' do
	package_name 'httpd'
	action :install
end

service 'apache2' do
	service_name 'httpd'
	action [:start, :enable]
end

file 'default www' do
	path '/var/www/html/index.html'
	content 'Hello World!'
end
