# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

inherit zserik-minimal

DESCRIPTION="ZSNIS - Zscheile Secure Network Information Service"
KEYWORDS="amd64 x86"
IUSE="server"

RDEPEND="net-analyzer/cryptcat
server? (
	>dev-misc/zsrc-0.0.1.2
	<dev-misc/zsrc-0.0.2
	sys-process/procps
)"

src_install() {
	echo install zsniclient
	dobin zsniclient

	if use server; then
		dodir /etc/zsnis
		dodir /run
		dodir /var/log

		echo install zsniserver
		dobin zsniserver

		exeinto /usr/share/zsnis
		echo install zsniserver-main
		doexe zsniserver-main
	fi
}
