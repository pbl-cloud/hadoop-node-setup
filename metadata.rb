name "hadoop_cluster"
version "0.1.0"

recipe "hadoop_cluster::default", "Installs hadoop cluster"

%w{ apt hadoop java magic_shell ssh-keys }.each do |dep|
  depends dep
end

%w{ debian ubuntu }.each do |os|
  supports os
end
