# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="Zscheile utilities to deal with text based name service databases"
KEYWORDS="arm amd64 x86"
RDEPEND="app-shells/bash
sys-apps/coreutils
sys-apps/grep
sys-apps/moreutils"

src_install() {
	dobin zstxtns-merge
	dobin zstxtns-unmerge
}