# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit zserik-base autotools

DESCRIPTION="Zscheile data text table Management"
LICENSE="MIT"
KEYWORDS="arm amd64 x86"

src_prepare() {
  eautoreconf
}
