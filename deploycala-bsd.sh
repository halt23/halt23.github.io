#! /bin/sh
#
#   SPDX-License-Identifier: BSD-2-Clause
#
### USAGE
#
# A crude equivalent to deploycala.py but for the BSD family.
# Since I only have FreeBSD and NomadBSD at hand, "family"
# means FreeBSD at the moment.
#
# The script does nothing but installing the build-dependencies
# for Calamares and optionally (the -F flag) an IDE.
#
# Usage: deploycala-bsd.sh <options>
#
# Usage:
#    -F    Installs an IDE (KDevelop) plus additional tooling.
#
### END USAGE

### ARGUMENT HANDLING
#
# 
install_ide=false
while getopts "hF" opt ; do
	case $opt in
	h|\?)
		sed -e '1,/USAGE/d' -e '/END.USAGE/,$d' < "$0"
		return 0
		;;
	F)
		install_ide=true
		;;
	esac
done

### PACKAGE MANAGER
#
# Set pkg to a suitable "package install" command which takes
# package names (and nothing else).
#
# If it's not set, assume we're not on BSD at the end.
#
pkg=""

dev_deps=""            # Development tools
build_qt_deps=""       # Qt headers and tools
build_general_deps=""  # 3rd party packages
build_kde_deps=""      # KDE Frameworks, if any
ide_deps=""            # The IDE (for -F)

if test "FreeBSD" = $( uname ) ; then
	if 0 = $( id -u ) ; then
		# We are root
		pkg="pkg install"
	else
		if test -x "/usr/local/bin/sudo" ; then
			pkg="sudo pkg install"
		else
			echo "This deploy script must be run as root, or you need sudo."
			exit 1
		fi
	fi

	dev_deps="cmake git"
	build_qt_deps="qt5-widgets"
	build_general_deps="yaml-cpp polkit-qt5"
	# build_kde_deps="kf5-kwidgetsaddons kf5-ki18n kf5-kconfig kf5-kcoreaddons"
	ide_deps="kdevelop qgit"
fi

test -n "$pkg" || { echo "This deploy script only works on BSD." ; exit 1 ; }

### DEPENDENCIES
#
#
test -n "$dev_deps" && $pkg $dev_deps
test -n "$build_qt_deps" && $pkg $build_qt_deps
test -n "$build_general_deps" && $pkg $build_general_deps
test -n "$build_kde_deps" && $pkg $build_kde_deps

if test xtrue = "x$install_ide" ; then
	test -n "$ide_deps" && $pkg $ide_deps
fi

