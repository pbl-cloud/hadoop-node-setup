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

