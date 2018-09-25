#
# Cookbook:: mhsendmail
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

version = node['mhsendmail']['version']
arch = node['kernel']['machine'] =~ /x86_64/ ? 'amd64' : '386'

download_url = node['mhsendmail']['downloads']["#{version}"]['linux']["#{arch}"]
checksum = node['mhsendmail']['checksums']["#{version}"]['linux']["#{arch}"]

remote_file node['mhsendmail']['path'] do
  source download_url
  checksum checksum
  owner 'root'
  group 'root'
  mode 755
  action :create
end
