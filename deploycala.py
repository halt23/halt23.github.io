#!/usr/bin/env python3
# -*- coding: utf-8 -*-
#
# === This file is part of Calamares - <http://github.com/calamares> ===
#
#   Copyright 2014, Teo Mrnjavac <teo@kde.org>
#
#   Calamares is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   Calamares is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with Calamares. If not, see <http://www.gnu.org/licenses/>.

import argparse
import os
import sys
import shutil


BLACK, RED, GREEN, YELLOW, BLUE, MAGENTA, CYAN, WHITE = range(8)

#following from Python cookbook, #475186
def has_colours(stream):
    if not hasattr(stream, "isatty"):
        return False
    if not stream.isatty():
        return False # auto color only on TTYs
    try:
        import curses
        curses.setupterm()
        return curses.tigetnum("colors") > 2
    except:
        # guess false in case of error
        return False


has_colours = has_colours(sys.stdout)


def printout(text, colour=WHITE):
    if has_colours:
        seq = "\x1b[1;%dm" % (30+colour) + text + "\x1b[0m"
        return seq
    else:
        return text


def message(msg):
    sys.stdout.write(printout("==> ", GREEN) + printout(msg, WHITE) + "\n")


def bail(msg):
    sys.stdout.write(printout("==> ", RED) + printout("Fatal error: " + msg + "\n", WHITE))
    sys.exit(1)


def yaourt_update():
    packages = ["cmake", "extra-cmake-modules", "boost"]
    os.system("yaourt -Syu --noconfirm --needed " + " ".join(packages))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("branch", nargs="?", default="master",
                        help="Branch to build.")
    args = parser.parse_args()

    cwd = os.getcwd()

    message("Backing up Calamares configuration and resources...")
    os.system("sudo cp -R /usr/share/calamares /usr/share/calamares.backup")
    os.system("sudo cp -R /etc/calamares /etc/calamares.backup")

    message("Updating build dependencies...")
    if shutil.which("yaourt"):
        yaourt_update()
    else:
        bail("no package manager found.")

    branch = args.branch;
    if not branch:
        branch = "master"

    if os.path.isdir("calamares"):
        message("Clone found, checking out " + branch + " branch...")
        os.chdir("calamares")
        os.system("git checkout --track origin/" + branch + " -b " + branch)
        os.system("git pull --rebase")
        os.system("git submodule update")
        os.system("git submodule sync")
        if os.path.isdir("build"):
            shutil.rmtree("build", ignore_errors=True)
    else:
        message("Cloning and checking out " + branch + " branch...")
        os.system("git clone https://github.com/calamares/calamares.git")
        os.chdir("calamares")
        os.system("git checkout --track origin/"+ branch +" -b " + branch)
        os.system("git submodule init")
        os.system("git submodule update")
        os.system("git submodule sync")

    message("Building...")
    os.mkdir("build")
    os.chdir("build")
    os.system("cmake -DCMAKE_BUILD_TYPE=Debug -DCMAKE_INSTALL_PREFIX=/usr -DWITH_PARTITIONMANAGER=1 .. && " +
              "make -j4 && " +
              "sudo make install")
    os.chdir(cwd)

    message("Restoring Calamares configuration and resources...")
    os.system("sudo cp -R /usr/share/calamares.backup/* /usr/share/calamares/")
    os.system("sudo cp -R /etc/calamares.backup/* /etc/calamares/")

    message("All done.")


if __name__ == "__main__":
    sys.exit(main())

