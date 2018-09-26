
version = node['mhsendmail']['binary']['version']
arch = node['kernel']['machine'] =~ /x86_64/ ? 'amd64' : '386'

download_url = node['mhsendmail']['binary']['downloads']["#{version}"]['linux']["#{arch}"]
checksum = node['mhsendmail']['binary']['checksums']["#{version}"]['linux']["#{arch}"]

remote_file node['mhsendmail']['path'] do
  source download_url
  checksum checksum
  owner 'root'
  group 'root'
  mode 755
  action :create
end
