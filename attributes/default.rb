#
# Cookbook:: mhsendmail
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


default['mhsendmail']['version'] = '0.2.0'
default['mhsendmail']['path'] = '/usr/local/bin/mhsendmail'
default['mhsendmail']['install_method'] = 'binary'

default['mhsendmail']['downloads']['0.2.0']['linux']['amd64'] = 'https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64'
default['mhsendmail']['checksums']['0.2.0']['linux']['amd64'] = 'be5acdc8ce3f380dcb9d02caed77c845affa9a447d0860961529b699dcd0c613'
