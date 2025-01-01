# Maintainer: Vilmar Catafesta <vcatafesta@gmail.com>

pkgname=chili-keyring
pkgver=$(date +%Y%m%d)
pkgrel=$(date +%H%M)
pkgdesc='Chili Linux PGP keyring'
arch=('any')
url="https://github.com/chililinux/${pkgname}"
install="${pkgname}.install"
depends=('pacman')
#makedepends=('git' 'python' 'sequoia-sq' 'pkgconf' 'systemd')
#checkdepends=('python-coverage' 'python-pytest')
source=("chili-keyring::git+${url}.git")
license=('GPL-3.0-or-later')
source=('Makefile'
	'chili.gpg'
	'chili-revoked'
	'chili-trusted')
sha256sums=(
	24f7ba95dbac86238efe70f36e94b1d2f139a18a3a6016b2c35993771f847734
	d93da94bc5a43993483444ccf7cd7ecbc72371477136cbe14e3fd2e609771969
	e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855
	1b68bc1f9d6210ac6ebdec489937b3af956030f21bedbfc39a3df97a2887edf1
)
validpgpkeys=('A0D5A8312A83940ED8B04B0F4BAC871802E960F1') # Vilmar Catafesta <vcatafesta@gmail.com>

package() {
	cd "${srcdir}"
	make PREFIX=/usr DESTDIR=${pkgdir} install
}
