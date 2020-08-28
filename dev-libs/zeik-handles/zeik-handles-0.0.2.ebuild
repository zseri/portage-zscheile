# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

inherit zserik-cmake

DESCRIPTION="Zscheile EIK Handles library"
KEYWORDS="amd64 arm x86"

COMMON_DEPEND="!<dev-lang/zeiksh-0.2.4"

DEPEND="$COMMON_DEPEND
	$DEPEND"

RDEPEND="$COMMON_DEPEND
	$RDEPEND
	virtual/zcmake-libfindmacros"
