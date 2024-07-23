#!/bin/bash

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-1/status ]; then
    DSI1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-1/status`
    if [ "connected" = "$DSI1_STATUS" ]; then
        echo off > /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-1/status
        DSI1_PRE_OFF="true"
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-2/status ]; then
    DSI2_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-2/status`
    if [ "connected" = "$DSI2_STATUS" ]; then
        echo off > /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-2/status
        DSI2_PRE_OFF="true"
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DP-1/status ]; then
    DP1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DP-1/status`
    if [ "connected" = "$DP1_STATUS" ]; then
        echo off > /sys/devices/platform/display-subsystem/drm/card0/card0-DP-1/status
        DP1_PRE_OFF="true"
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DP-2/status ]; then
    DP2_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DP-2/status`
    if [ "connected" = "$DP2_STATUS" ]; then
        echo off > /sys/devices/platform/display-subsystem/drm/card0/card0-DP-2/status
        DP2_PRE_OFF="true"
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status ]; then
    HDMI_A1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status`
    if [ "connected" = "$HDMI_A1_STATUS" ]; then
        echo off > /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status
        HDMI_PRE_OFF="true"
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-eDP-1/status ]; then
    EDP1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-eDP-1/status`
    if [ "connected" = "$EDP1_STATUS" ]; then
        echo off > /sys/devices/platform/display-subsystem/drm/card0/card0-eDP-1/status
        EDP1_PRE_OFF="true"
    fi
fi

sleep 2

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-1/status ]; then
    ON_DSI1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-1/status`
    if [ "disconnected" = "$ON_DSI1_STATUS" ] && [ "true" = "$DSI1_PRE_OFF" ]; then
        echo on > /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-1/status
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-2/status ]; then
    ON_DSI2_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-2/status`
    if [ "disconnected" = "$ON_DSI2_STATUS" ] && [ "true" = "$DSI2_PRE_OFF" ]; then
        echo on > /sys/devices/platform/display-subsystem/drm/card0/card0-DSI-2/status
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-eDP-1/status ]; then
    ON_EDP1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-eDP-1/status`
    if [ "disconnected" = "$ON_EDP1_STATUS" ] && [ "true" = "$EDP1_PRE_OFF" ] ; then
        echo on > /sys/devices/platform/display-subsystem/drm/card0/card0-eDP-1/status
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DP-1/status ]; then
    ON_DP1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DP-1/status`
    if [ "disconnected" = "$ON_DP1_STATUS" ] && [ "true" = "$DP1_PRE_OFF" ]; then
        echo on > /sys/devices/platform/display-subsystem/drm/card0/card0-DP-1/status
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-DP-2/status ]; then
    ON_DP2_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-DP-2/status`
    if [ "disconnected" = "$ON_DP2_STATUS" ] && [ "true" = "$DP2_PRE_OFF" ]; then
        echo on > /sys/devices/platform/display-subsystem/drm/card0/card0-DP-2/status
    fi
fi

if [ -f /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status ]; then
    ON_HDMI_A1_STATUS=`cat /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status`
    if [ "disconnected" = "$ON_HDMI_A1_STATUS" ] && [ "true" = "$HDMI_PRE_OFF" ]; then
        echo on > /sys/devices/platform/display-subsystem/drm/card0/card0-HDMI-A-1/status
    fi
fi
