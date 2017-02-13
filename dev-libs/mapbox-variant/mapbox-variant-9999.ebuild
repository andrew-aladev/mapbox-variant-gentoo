# Copyright 1999-2007 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="5"

inherit git-2

DESCRIPTION="An header-only alternative to boost::variant for C++11 and C++14."
HOMEPAGE="https://github.com/mapbox/variant"
EGIT_REPO_URI="https://github.com/mapbox/variant.git"

LICENSE="Boost-1.0 BSD"
SLOT="0/9999"
KEYWORDS=""

IUSE="test"

RDEPEND=""
DEPEND=""

src_unpack() {
    git-2_src_unpack
}

src_compile() {
    :
}

src_test() {
    make test
}

src_install() {
    insinto /usr/include
    doins -r include/*
}
