#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

fwebber_pass = data_bag_item('user_password', 'fwebber')

user 'fwebber' do 
	comment 'Franklin webber'
	uid 2000
	home '/home/fwebber'
	shell 'bin/bash'
	password fwebber_pass['password']
end
