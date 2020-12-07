---
layout: single
title: About
header:
  overlay_color: "#000"
  overlay_filter: "0.8"
  overlay_image: /images/banner.jpg
toc: true
toc_label: "Content"
sidebar:
  nav: "links"
gallery:
  - url: /images/gallery/page-welcome.png
    image_path: /images/gallery/page-welcome-th.png
    alt: "Welcome Screen"
    title: "Welcome Screen"
  - url: /images/gallery/page-locale.png
    image_path: /images/gallery/page-locale-th.png
    alt: "Locale Screen"
    title: "Locale Screen"
  - url: /images/gallery/page-partition.png
    image_path: /images/gallery/page-partition-th.png
    alt: "Parttioning Screen"
    title: "Partitioning Screen"
permalink: /about/
published: true
# Trailing whitespace is important in this file!
---

## What is Calamares
{: .offset}

Calamares is an installer framework. By design it is very customizable, in order to satisfy a wide variety of needs and use cases.

Calamares aims to be easy, usable, beautiful, pragmatic, inclusive and distribution-agnostic.

Calamares includes an advanced partitioning feature, with support for both manual and automated partitioning operations. It is the first installer with an automated "Replace Partition" option, which makes it easy to reuse a partition over and over for distribution testing.

Got a Linux distribution but no system installer? [Grab Calamares](https://github.com/calamares/calamares){:target="_blank"}, mix and match any number of [Calamares modules](https://github.com/calamares/calamares/tree/calamares/src/modules){:target="_blank"} (or write your own in Python or C++), throw together some [branding](https://github.com/calamares/calamares/tree/calamares/src/branding){:target="_blank"}, package it up and you are ready to ship!
The [Calamares extensions](https://github.com/calamares/calamares-extensions){:target="_blank"}
repository holds more branding examples and specialized modules.

## What Calamares is not
{: .offset}

Calamares is not a Manjaro Linux installer, or a KaOS installer, or a Maui installer, or even an installer for Arch Linux based distributions. Calamares is an independent product. The Calamares team works closely with Linux distributors to provide the very best experience to their users.

Calamares does not aim to be the ultimate "standard" installer of the Linux desktop. Many distributions already have more mature system installer solutions, but some don't, and that's where Calamares can be of use.

## What does Calamares look like
{: .offset}

Since Calamares is designed to be customized, themed and branded by individual distributions,
it [can look very different](/#gallery) when used by specific distributions. There will be distinct
color schemes, welcome graphics, and while-you-wait slideshows.
It is very unlikely that you will encounter a "plain" version of Calamares.
The source code **does** have a default configuration, which looks like these
screenshots:

<div class="">
  {% include gallery %}
</div>

## Who develops Calamares
{: .offset}

Calamares is maintained by [the Calamares team](/team/). Most of us are also [KDE](https://kde.org){:target="_blank"} developers, and we have received contributions from [BBQLinux](http://bbqlinux.org/){:target="_blank"}, [Fedora](https://fedoraproject.org/){:target="_blank"}, [KaOS](http://kaosx.us/){:target="_blank"}, [Kubuntu](http://kubuntu.org){:target="_blank"}, [Manjaro](http://manjaro.org/){:target="_blank"}, [Maui](http://www.maui-project.org/){:target="_blank"}, [Netrunner](http://www.netrunner.com/){:target="_blank"} and [OpenMandriva](https://www.openmandriva.org/){:target="_blank"} developers as well.

We gladly accept contributions from everyone, and we have no exclusive association with any Linux distribution. Calamares is not a KDE project, or a KaOS project, or a Manjaro project, we are just a bunch of people dumping some code on [GitHub](https://github.com/calamares){:target="_blank"}.

## Who ships Calamares
{: .offset}

Many Linux distributions are in varying stages of adopting Calamares as their primary system installer.

Operating systems that already ship Calamares:

- [AIMS Desktop](https://desktop.aims.ac.za/){:target="_blank"}
- [Apricity OS](http://www.apricityos.com/){:target="_blank"}
- [Archman Linux](https://archman.org/){:target="_blank"}
- [ArcoLinux](https://arcolinux.com/category/arcolinux/help/){:target="_blank"}
- [Argent Linux](https://rogentos.ro/#Portfolio){:target="_blank"}
- [BBQLinux](http://bbqlinux.org/){:target="_blank"}
- [BlackPanther OS](http://www.blackpantheros.eu/){:target="_blank"}
- [Bluestar Linux](https://sourceforge.net/projects/bluestarlinux/){:target="_blank"}
- [Chakra](https://chakralinux.org/){:target="_blank"}
- [EndeavourOS](https://endeavouros.com/){:target="_blank"}
- [Feren OS](https://ferenos.weebly.com/){:target="_blank"}
- [GeckoLinux](http://geckolinux.github.io/){:target="_blank"}
- [Hamara Linux](https://www.hamaralinux.org/){:target="_blank"}
- [Kannolo](https://kannolo.sourceforge.io/){:target="_blank"} (Fedora Remix)
- [KaOS](http://kaosx.us/){:target="_blank"}
- [KDE Neon](https://neon.kde.org/){:target="_blank"}
- [Laxer OS](https://www.laxeros.com/){:target="_blank"}
- [Lubuntu](http://lubuntu.me/){:target="_blank"}
- [Manjaro](http://manjaro.org/){:target="_blank"}
- [Neptune](https://neptuneos.com/en/start-page.html){:target="_blank"}
- [Netrunner](http://www.netrunner.com/){:target="_blank"}
- [OpenMamba](http://openmamba.org/en/){:target="_blank"}
- [OpenMandriva](https://www.openmandriva.org/){:target="_blank"}
- [Parabola](https://www.parabola.nu/){:target="_blank"}
- [Pisi Linux](https://www.pisilinux.org/){:target="_blank"}
- [Redcore Linux](http://redcorelinux.org/){:target="_blank"}
- [Sabayon](https://www.sabayon.org/){:target="_blank"}
- [Salient OS](https://salientos.github.io/){:target="_blank"}
- [Siduction](https://siduction.org/){:target="_blank"}

Operating systems that are evaluating Calamares in pre-release builds:

- [Frugalware](https://frugalware.org/){:target="_blank"}
- [Maui](http://www.maui-project.org/){:target="_blank"}
- [PCLinuxOS](http://www.pclinuxos.com/){:target="_blank"}

Operating systems that ship Calamares in their package repositories for third-party derivatives to use:

- [Debian](https://debian.org/){:target="_blank"}
- [Fedora](https://fedoraproject.org/){:target="_blank"}
- [Gentoo](https://gentoo.org/){:target="_blank"}
- [openSUSE](https://opensuse.org/){:target="_blank"} (from Leap 15)

## What is Calamares made of
{: .offset}

Calamares is mostly written in C++14, with Qt 5 (5.9 or later) as general 
purpose library and UI toolkit.

Calamares is modular by design, and Python 3 was chosen as the main 
scripting language. The Python 3 interface is implemented with Boost.Python, 
and all Calamares configuration is done in YAML.

For a complete list of dependencies, see 
[the README file](https://github.com/calamares/calamares/blob/calamares/README.md){:target="_blank"}.

## Contact us
{: .offset}

- IRC: #calamares on chat.freenode.net.  
<!-- Mailing list: [calamares-dev@googlegroups.com](mailto:calamares-dev@googlegroups.com)   -->
- Bugs: [Calamares issues, bugs and feature requests](https://github.com/calamares/calamares/issues){:target="_blank"}
- GPG: Calamares release tarballs are signed with a [GPG signing-subkey](pk-7FEA3DA6169C77D6.txt):
  - Since Calamares 3.2.3, E7C31EAE243D798415BCEF00128F00873E05AF1D
  - Since Calamares 3.2.26, 57E14BD1CD6C198BC11BF18D61A7D26277E4D0DB (one release only!)
  - Since Calamares 3.2.27, 86B8EDB6ED8E3F96A9BAECB5CFDDC96F12B1915C (**current**)
