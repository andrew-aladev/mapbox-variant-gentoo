# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit git-r3

DESCRIPTION="An header-only alternative to boost::variant for C++11 and C++14."
HOMEPAGE="https://github.com/mapbox/variant"
EGIT_REPO_URI="https://github.com/mapbox/variant.git"

LICENSE="Boost-1.0 BSD"
SLOT="0/9999"
KEYWORDS=""

IUSE="test"

RDEPEND=""
DEPEND=""

src_compile() {
    :
}

src_test() {
    default
    emake test || die "test failed"
}

src_install() {
    insinto /usr/include || die "insinto failed"
    doins -r include/* || die "doins failed"
}
