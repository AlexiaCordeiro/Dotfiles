#!/bin/sh

yybluetoothctl remove B8:F6:53:F5:F9:E0
notify-send "Please make sure Headphone is in pairing mode."
timeout 15s bluetoothctl scan on
bluetoothctl connect B8:F6:53:F5:F9:E0
if [[ $(bluetoothctl connect B8:F6:53:F5:F9:E0) = *'Device B8:F6:53:F5:F9:E0 not available'* ]]; then
  notify-send "bluetooth mouse not detected. Make sure your device is in pairing mode. Trying again in 30 seconds..."
  timeout 30s bluetoothctl scan on
  bluetoothctl connect B8:F6:53:F5:F9:E0
  if [[ $(bluetoothctl connect B8:F6:53:F5:F9:E0) = *'Device B8:F6:53:F5:F9:E0 not available'* ]]; then
    notify-send "bluetooth mouse not detected. Make sure your device is in pairing mode. Trying again in 30 seconds..."
    timeout 30s bluetoothctl scan on
    bluetoothctl connect B8:F6:53:F5:F9:E0
    if [[ $(bluetoothctl connect B8:F6:53:F5:F9:E0) = *'Device B8:F6:53:F5:F9:E0 not available'* ]]; then
        notify-send "bluetooth mouse paring unsuccesful. Please try again later."
    else
        notify-send "Pairing successful. Connected to Headphone."
    fi
  else
    notify-send "Pairing successful. Connected to Headphone."
  fi
else
  notify-send "Pairing successful. Connected to Headphone."
fi
bluetoothctl scan off
