---
published: true
layout: post
title: "Calamares 3.2.0-rc4 available"
---
The [Calamares team](https://calamares.io/team/) is happy to announce the
availability of **Calamares 3.2.0-rc4**, a (testing) pre-release
of the upcoming features-and-functionality of Calamares 3.2.0.
This is the new series of Calamares releases following on
from the stable 3.1 series.

Calamares is a distribution-independent system installer, with an advanced
partitioning feature for both manual and automated partitioning operations.
Calamares is designed to be customizable by distribution maintainers without
need for cumbersome patching, thanks to third party branding and external
modules support.

<!--more-->

Calamares 3.2.0-rc4 is a features-and-functionality release.

 * Translations have been expanded, with many strings not-previously
   localized now available for translation (this mostly applies to
   error messages which we hope you don't encounter).
 * There is a new command-line flag `-D` which switches on debugging
   output, **without** also enabling debug mode which loads modules
   from the current directory. Optionally you can give `-D` a
   debugging value from 0 (no debug logging) to 9 (very verbose).
 * A new example branding module, called *samegame*, has been added.
   This can be used instead of the QML Slideshow
   so that users can play a simple clicking game while
   the system is installed. This is intended primarily to show that
   there is nothing special about the QML Slideshow in Calamares.

If you experience an issue with Calamares, please tell us all about it
on the [**Calamares issue tracker**][1]. For a full change list, or
the full list of [issues closed][2] with this release, please see the
Calamares code repository.

[1]: https://github.com/calamares/calamares/issues
[2]: https://github.com/calamares/calamares/milestone/42?closed=1
