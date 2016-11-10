#!/usr/bin/python
import pyudev

context = pyudev.Context()
for device in context.list_devices(subsystem='block', ID_BUS='usb'):
    if device.device_type == "disk" or device.device_type == "sd_mmc":
        print "%s %s, %s" % (device.get('ID_VENDOR'), device.get('ID_MODEL'), device.device_node)
