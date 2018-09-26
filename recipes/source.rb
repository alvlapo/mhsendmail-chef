#
# Cookbook:: mhsendmail
# Recipe:: source
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'golang'

golang_package 'github.com/mailhog/mhsendmail'

file node['mhsendmail']['path'] do
  content lazy { IO.binread("#{node['go']['gobin']}/mhsendmail") }
  owner 'root'
  group 'root'
  mode 755

  action :create
end
