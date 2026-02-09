# Copyright 2024 Gentoo Authors
# Distributed under the terms of the ISC License

EAPI=8

inherit autotools

DESCRIPTION="Game of Trees, an OpenBSD version control system"
HOMEPAGE="https://gameoftrees.org/"
SRC_URI="https://gameoftrees.org/releases/portable/got-portable-${PV}.tar.gz"

S="${WORKDIR}/got-portable-${PV}"

LICENSE="ISC"
SLOT="0"
KEYWORDS="~amd64 ~x86"

BDEPEND="
	virtual/pkgconfig
	sys-devel/bison
"
DEPEND="
	sys-libs/ncurses:=
	dev-libs/libbsd
	dev-libs/libmd
	sys-libs/zlib
	dev-libs/libevent:=
	dev-libs/libretls
	dev-libs/openssl:=
"
RDEPEND="${DEPEND}"

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf
}

src_install() {
	default
}
