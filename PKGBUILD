# Maintainer: Daniel Hillenbrand <codeworkx [at] bbqlinux [dot] org>

pkgname=bbqlinux-desktop-mate
pkgver=1.1.0
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
'mate-icon-theme'
'mate-menus'
'mate-notification-daemon'
'mate-panel'
'mate-polkit'
'mate-session-manager'
'mate-settings-daemon'
'mate-themes'
'mate-user-guide'

# mate-extra
'atril'
'caja-gksu'
'caja-image-converter'
'caja-open-terminal'
'caja-sendto'
'caja-share'
'caja-wallpaper'
'engrampa'
'eom'
'galculator-gtk2'
'mate-applets'
'mate-icon-theme-faenza'
'mate-media'
'mate-netbook'
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

    mkdir -p etc/systemd/user/default.target.wants
    install -Dm644 "$srcdir/usr/lib/systemd/user/bbqlinux-mate-settings.service" usr/lib/systemd/user/bbqlinux-mate-settings.service
    ln -s /usr/lib/systemd/user/bbqlinux-mate-settings.service etc/systemd/user/default.target.wants/

    mkdir -p usr/bin
    install -Dm755 "$srcdir/usr/bin/bbqlinux-mate-settings.sh" usr/bin/bbqlinux-mate-settings.sh
}
