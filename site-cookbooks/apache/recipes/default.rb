#
# Cookbook Name:: apache
# Recipe:: default
#

execute "apt-get update"
package "apache2" do
  action :install
end

