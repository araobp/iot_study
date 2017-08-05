# iot_study

## Google Assistant SDK on RasPi3 with USB mic

I purchased [this USB mic supporting analog audio-out](http://buffalo.jp/product/multimedia/headset/bshsm05bk/), and I connected [my old analog speaker](https://www.bhphotovideo.com/c/product/456867-REG/JBL_JBLRADMICBLK_Radial_Micro_iPod_Dock.html) to the device.

[Step 1] Audio setup

List up the USB audio device to confirm the card and device numbers:
```
pi@raspberrypi:~ $ arecord -l
**** List of CAPTURE Hardware Devices ****
card 1: Device [USB PnP Sound Device], device 0: USB Audio [USB Audio]
  Subdevices: 1/1
  Subdevice #0: subdevice #0
```

Edit ~/.asoundrc as follows:
```
pcm.!default {
  type asym
  capture.pcm "mic"
  playback.pcm "speaker"
}
pcm.mic {
  type plug
  slave {
    pcm "hw:1,0"
  }
}
pcm.speaker {
  type plug
  slave {
    pcm "hw:1,0"
  }
}
```

[Step 2] Install Google Assistant and run it

https://developers.google.com/assistant/sdk/develop/python/?authuser=1

Make this script and run:
```
source env/bin/activate
export ASSISTANT_MIC_SENSITIVITY=-12
google-assistant-demo
```

## Google Assistant SDK on RasPi3 with Bluetooth HSP

I purchased [this USB dongle](http://www2.elecom.co.jp/products/LBT-UAN05C2.html) and [this headset](http://www2.elecom.co.jp/products/LBT-HS20MPCRD.html).

[Step 1] Upgrade bluez to the latest one

https://learn.adafruit.com/install-bluez-on-the-raspberry-pi/installation

[Step 2] Upgrade pulseaudio and check bluetooth connectivity

http://youness.net/raspberry-pi/bluetooth-headset-raspberry-pi-3-ad2p-hsp

[Step 3] Install Google Assistant and try it out

https://developers.google.com/assistant/sdk/develop/python/?authuser=1

Note: it seems like that bluez requires Pulseaudio, unlike the case of USB mic.

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
