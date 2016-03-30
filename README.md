# iot_study

##MQTT broker installation
```
$ apt-get update
$ apt-get install mosquitto
```
##MQTT client module
```
$ pip install paho-mqtt
```
##Sample IPython notebooks

- [publisher](./ipynb/publisher.ipynb)
- [subscriber](./ipynb/subscriber.ipynb)

##Java8 installation

- Download Java8 from https://java.com/en/download/
- Set JAVA_HOME and PATH environment variables.

##Cassandra installation

Download Cassandra and start it: 
```
$ wget http://ftp.meisei-u.ac.jp/mirror/apache/dist/cassandra/3.4/apache-cassandra-3.4-bin.tar.gz 
$ tar zxvf http://ftp.meisei-u.ac.jp/mirror/apache/dist/cassandra/3.4/apache-cassandra-3.4-bin.tar.gz
$ cd apache-cassandra-3.4/bin
$ ./cassandra

```

Connect cqlsh to Cassandra:
```
$ ./cqlsh
```
