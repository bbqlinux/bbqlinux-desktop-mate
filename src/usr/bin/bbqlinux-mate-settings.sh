#!/usr/bin/bash

echo "> BBQLinux GSettings for MATE"

mkdir -p ~/.bbqlinux

NEW_VERSION=20141005
if [ ! -f ~/.bbqlinux/.mate-settings ] || [ "$1" == "init" ]
then
    echo "Applying initial settings."
    # Interface
    dbus-launch gsettings set org.mate.interface gtk-theme 'BBQLinux'
    dbus-launch gsettings set org.mate.interface icon-theme 'Papirus'

    # Marco
    dbus-launch gsettings set org.mate.Marco.general theme 'BBQLinux'

    # Background
    dbus-launch gsettings set org.mate.background picture-filename '/usr/share/backgrounds/bbqlinux/bbqlinux_wallpaper_00.jpg'

    # Font rendering
    dbus-launch gsettings set org.mate.font-rendering antialiasing 'rgba'
    dbus-launch gsettings set org.mate.font-rendering dpi 96.0
    dbus-launch gsettings set org.mate.font-rendering hinting 'slight'
    dbus-launch gsettings set org.mate.font-rendering rgba-order 'rgb'

    # Mate terminal
    dbus-launch gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ default-size-columns 100
    dbus-launch gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ default-size-rows 30
    dbus-launch gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-custom-default-size true
    dbus-launch gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-theme-colors true
    dbus-launch gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ scrollback-unlimited true
    dbus-launch gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ visible-name 'Default'

    touch ~/.bbqlinux/.mate-settings
    echo ${NEW_VERSION} > ~/.bbqlinux/.mate-settings
    echo "Done."
fi

CURRENT_VERSION=$(cat ~/.bbqlinux/.mate-settings)
NEW_VERSION=20141003
if [ ${CURRENT_VERSION} -lt ${NEW_VERSION} ]
then
    echo "Upgrading from ${CURRENT_VERSION} to ${NEW_VERSION}"

    # Interface
    dbus-launch gsettings set org.mate.interface gtk-theme 'BBQLinux'
    dbus-launch gsettings set org.mate.interface icon-theme 'Papirus'

    # Marco
    dbus-launch gsettings set org.mate.Marco.general theme 'BBQLinux'

    echo ${NEW_VERSION} > ~/.bbqlinux/.mate-settings
    echo "Done."
fi

CURRENT_VERSION=$(cat ~/.bbqlinux/.mate-settings)
NEW_VERSION=20141005
if [ ${CURRENT_VERSION} -lt ${NEW_VERSION} ]
then
    echo "Upgrading from ${CURRENT_VERSION} to ${NEW_VERSION}"

    # Mate Terminal
    dbus-launch gsettings set org.mate.terminal.profile:/org/mate/terminal/profiles/default/ use-theme-colors true

    echo ${NEW_VERSION} > ~/.bbqlinux/.mate-settings
    echo "Done."
fi

exit 0
