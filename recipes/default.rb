#
# Cookbook:: mhsendmail
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe "mhsendmail::#{node['mhsendmail']['install_method']}"
