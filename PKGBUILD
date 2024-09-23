# Chililinux <vcatafesta[at]gmail.com>

# Manjaro credits
# Maintainer: Philip Müller <philm[at]manjaro[dot]org>
# Maintainer: Bernhard Landauer <bernhard[at]manjaro[dot]org>

# Arch credits:
# Pierre Schmitz <pierre@archlinux.de>

pkgname=chililinux-keyring
pkgver=20240821
pkgrel=3
pkgdesc='Chililinux PGP keyring'
arch=('any')
url='https://chililinux.com'
license=('MIT')
install="${pkgname}.install"
source=('Makefile'
        'chililinux.gpg'
        'chililinux-revoked'
        'chililinux-trusted')
sha256sums=('13ff474d83a8379758f525980ba04e9f31c8c5dc9065d18d2c04a90c7766620d'
            'd93da94bc5a43993483444ccf7cd7ecbc72371477136cbe14e3fd2e609771969'
            'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855'
            '1b68bc1f9d6210ac6ebdec489937b3af956030f21bedbfc39a3df97a2887edf1'

package() {
  cd "${srcdir}"
  make PREFIX=/usr DESTDIR=${pkgdir} install
}
