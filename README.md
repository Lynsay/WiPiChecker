pi-wifi-ok
==========

A script which checks the status of the wi-fi interface on the Raspberry Pi

Recently set-up a Raspberry Pi with an Edimax EW-7811Un USB wi-fi adapter.  Occasionally, the wi-fi drops out and never attempts to reconnect to the network.  It's unclear why this issue occurred.  The syslog files revealed that when the wi-fi dropped, a “link beat lost” message was recorded. I was fairly certain it wasn’t a power supply issue interfering with the USB ports so this script was to created as part of a cron job to check the status of the wi-fi adapter.

Full blog post outlining how to use the script can be found at- http://www.lynsayshepherd.com/blog/2014/06/27/keeping-the-raspberry-pi-connected-via-wi-fi/
