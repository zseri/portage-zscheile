# Copyright 1999-2020 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

if [[ -z ${_ZS_PHRACK_ECLASS} ]]; then
_ZS_PHRACK_ECLASS=1

MY_P="${PN}${PV:1:2}"
DESCRIPTION="A Hacker magazine by the community, for the community"
HOMEPAGE="http://www.phrack.org/"
SRC_URI="http://www.phrack.org/archives/tgz/${MY_P}.tar.gz"

LICENSE="phrack"
SLOT="${PV}"
KEYWORDS="alpha amd64 arm hppa ia64 mips ppc ppc64 s390 sparc x86 amd64-linux x86-linux ppc-macos"
IUSE=""

S=${WORKDIR}

EXPORT_FUNCTIONS src_install

zs-phrack0_src_install() {
	local i FBN dst
	dodir /usr/share/doc/phrack
	for i in *.txt; do
		FBN="${i%.*}"
		[ -z "${FBN:1}" ] && FBN="0${FBN}"
		dst="p${PV}-${FBN}.txt"
		echo " - $FBN: $i --> ${dst}"
		cp -T "$i" "${D}/usr/share/doc/phrack/${dst}"
	done
}

fi
