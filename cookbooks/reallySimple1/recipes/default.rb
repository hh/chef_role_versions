#
# Cookbook Name:: reallySimple1
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#


file "/tmp/reallySimple1" do
  owner "root"
  group "root"
  mode 00755
  action :create
  content "reallySimple1 Content."
end
