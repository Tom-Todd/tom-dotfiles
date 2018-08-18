#!/bin/sh
echo stopping touch driver
rmmod hid_multitouch
echo restarting touch driver
modprobe hid_multitouch
echo done
