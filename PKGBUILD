# Maintainer: Daniel Hillenbrand <codeworkx [at] bbqlinux [dot] org>

pkgname=bbqlinux-desktop-mate
pkgver=1.0.2
pkgrel=1
pkgdesc="BBQLinux MATE Desktop"
arch=('any')
url="https://github.com/bbqlinux/bbqlinux-desktop-mate"
license=('GPL')
groups=('bbqlinux')
replaces=('bbqlinux-desktop-environment')
provides=('bbqlinux-desktop-environment')
depends=(

# lightdm
'lightdm'
'lightdm-bbqlinux-greeter'

# Theme
'bbqlinux-theme'
'bbqlinux-artwork'
'bbqlinux-config-gtk'

# mate
'caja'
'marco'
'mate-backgrounds'
'mate-control-center'
'mate-desktop'
'mate-dialogs'
'mate-icon-theme'
'mate-menus'
'mate-notification-daemon'
'mate-panel'
'mate-polkit'
'mate-session-manager'
'mate-settings-daemon'
'mate-themes'

# mate-extra
'atril'
'caja-gksu'
'caja-image-converter'
'caja-open-terminal'
'caja-sendto'
'caja-share'
'engrampa'
'eom'
'galculator-gtk2'
'mate-applets'
'mate-icon-theme-faenza'
'mate-media'
'mate-netspeed'
'mate-power-manager'
'mate-screensaver'
'mate-sensors-applet'
'mate-system-monitor'
'mate-terminal'
'mate-user-share'
'mate-utils'
'mozo'
'pluma'

# keyring
'gnome-keyring'
'libsecret'

)

package() {
    cd "$pkgdir"
    mkdir -p etc
    mkdir -p usr/bin

    install -Dm755 "$srcdir/usr/bin/bbqlinux-gsettings.sh" usr/bin/bbqlinux-gsettings.sh

    cp -R "$srcdir/etc/skel" etc/skel
}
