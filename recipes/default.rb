#
# Cookbook Name::hadoop_cluster
# Recipe:: default

magic_shell_environment 'HADOOP_USER_NAME' do
  value 'hdfs'
end

include_recipe "apt"

include_recipe "java::default"
include_recipe "hadoop::default"
include_recipe "hadoop::hadoop_hdfs_namenode"
include_recipe "hadoop::hadoop_hdfs_datanode"

execute "Initialize NameNode" do
  command 'service hadoop-hdfs-namenode init'
end

service "hadoop-hdfs-namenode" do
  action [ :enable, :start ]
end

service "hadoop-hdfs-datanode" do
  action [ :enable, :start ]
end
