#!/bin/sh
echo -e "AT*PROD=2\r\n" > /dev/ttyACM1
sleep 2
echo -e "AT*MRD_MEP=D\r\n" > /dev/ttyACM1
sleep 2
echo -e "AT*PROD=0\r\n" > /dev/ttyACM1
sleep 2
