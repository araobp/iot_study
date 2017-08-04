# iot_study

## Google Assistant SDK on RasPi3 with Bluetooth HSP

[Step 1] http://youness.net/raspberry-pi/bluetooth-headset-raspberry-pi-3-ad2p-hsp

[Step 2] https://developers.google.com/assistant/sdk/develop/python/?authuser=1

## MQTT broker installation
```
$ apt-get update
$ apt-get install mosquitto
```
## MQTT client module
```
$ pip install paho-mqtt
```
## Sample IPython notebooks

- [publisher](./ipynb/publisher.ipynb)
- [subscriber](./ipynb/subscriber.ipynb)

## Java8 installation

- Download Java8 from https://java.com/en/download/
- Set JAVA_HOME and PATH environment variables.

## Cassandra installation

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

## Automatic Licence Plate Recognition (ALPR)

https://github.com/openalpr/openalpr

```
$ alpr <image file>
plate0: 8 results
    - 2217	 confidence: 91.239
    - Z217	 confidence: 78.6942
    - 2Z17	 confidence: 78.384
    - 22I7	 confidence: 78.1156
    - ZZ17	 confidence: 65.8392
    - Z2I7	 confidence: 65.5708
    - 2ZI7	 confidence: 65.2606
    - ZZI7	 confidence: 52.7158
```

## USB webcam with motion detection

I have confirmed it works on my Raspberry Pi 3:
```
$ apt-get install motion
```

### Use case 1

```
  [USB Webcam]-[Raspberry Pi 3]- on_picture_save ->[OpenALPR]-- MQTT -->[Cassandra] 
                               --- raw image ---------------> [Cassandra]
```

## Interesting toys

- [Lego Mindstorms](http://www.lego.com/mindstorms/)
- [Remote control EV3 robot via Bluemix](https://developer.ibm.com/bluemix/2015/01/19/remote-control-ev3-robot-via-ibm-bluemix-iot/)
