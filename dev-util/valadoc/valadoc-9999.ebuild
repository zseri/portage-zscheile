# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
GCONF_DEBUG="no"

inherit vala gnome2-live

DESCRIPTION="A documentation generator for generating API documentation from Vala source code"
HOMEPAGE="http://live.gnome.org/Valadoc"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-lang/vala
	dev-libs/libgee
	media-gfx/graphviz
	dev-libs/glib:2
	x11-libs/gtk+:2
	x11-libs/gdk-pixbuf:2"
RDEPEND="${DEPEND}"

DOCS="AUTHORS ChangeLog MAINTAINERS NEWS README THANKS"

src_prepare() {
	vala_src_prepare
	gnome2-live_src_prepare
}

pkg_postinst() {
	gnome2-live_pkg_postinst
}