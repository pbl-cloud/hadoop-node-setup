# hadoop-node-setup

Set up a local hadoop in a virtual machine
for development purposes.

## Dependencies

* Ruby 1.9+
* Vagrant
* VirtualBox

## Usage

```
$ bundle install
$ kitchen converge
$ ssh vagrant@192.168.33.33 "HADOOP_USER_NAME=hdfs hadoop jar /usr/lib/hadoop-mapreduce/hadoop-mapreduce-examples-2.2.0.2.0.11.0-1.jar pi 100 100"
```

### SSH Key

To login without password (needed to run Hadoop from webapp),
add a file with the same template as

https://github.com/pbl-cloud/hadoop-node-setup/blob/master/data_bags/users/daniel.json

in the same directory. Change `id` to whatever you want,
and put your public key.

Then, edit the following file

https://github.com/pbl-cloud/hadoop-node-setup/blob/master/attributes/default.rb

to add the `id` you chose in the `vagrant => ['daniel']` array.
