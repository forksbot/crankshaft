#!/bin/bash

source /opt/crankshaft/crankshaft_default_env.sh
source /opt/crankshaft/crankshaft_system_env.sh

log_echo "Set user permissions /tmp/xxx"
chown pi:pi /tmp/.local-pi
chown pi:pi /tmp/.config-pi
chown pi:pi /tmp/.cache-pi

chmod 777 /tmp/.local-pi
chmod 777 /tmp/.config-pi
chmod 777 /tmp/.cache-pi

chown root:root /tmp/.local-root
chown root:root /tmp/.config-root
chown root:root /tmp/.cache-root

mkdir /var/lib/samba/printers
mkdir /var/lib/samba/private
mkdir /var/lib/samba/usershares

# Check if wallpapers are present and non zero
if [ ! -f /boot/crankshaft/wallpaper.png ] || [ ! -s /boot/crankshaft/wallpaper.png ]; then
    log_echo "Place default wallpaper.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/wallpaper.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/wallpaper-night.png ] || [ ! -s /boot/crankshaft/wallpaper-night.png ]; then
    log_echo "Place default wallpaper-night.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/wallpaper-night.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/wallpaper-classic.png ] || [ ! -s /boot/crankshaft/wallpaper-classic.png ]; then
    log_echo "Place default wallpaper-classic.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/wallpaper-classic.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/wallpaper-classic-night.png ] || [ ! -s /boot/crankshaft/wallpaper-classic-night.png ]; then
    log_echo "Place default wallpaper-classic-night.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/wallpaper-classic-night.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/wallpaper-eq.png ] || [ ! -s /boot/crankshaft/wallpaper-eq.png ]; then
    log_echo "Place default wallpaper-eq.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/wallpaper-eq.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/camera-overlay.png ] || [ ! -s /boot/crankshaft/camera-overlay.png ]; then
    log_echo "Place default camera-overlay.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/camera-overlay.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/usbcamera-overlay.png ] || [ ! -s /boot/crankshaft/usbcamera-overlay.png ]; then
    log_echo "Place default usbcamera-overlay.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/usbcamera-overlay.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/splash.png ] || [ ! -s /boot/crankshaft/splash.png ]; then
    log_echo "Place default splash.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/splash.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

if [ ! -f /boot/crankshaft/shutdown.png ] || [ ! -s /boot/crankshaft/shutdown.png ]; then
    log_echo "Place default shutdown.png"
    /usr/local/bin/crankshaft filesystem boot unlock
    cp /opt/crankshaft/wallpaper/shutdown.png /boot/crankshaft/
    /usr/local/bin/crankshaft filesystem boot lock
fi

exit 0
