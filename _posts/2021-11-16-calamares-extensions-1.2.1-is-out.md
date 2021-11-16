---
published: true
layout: post
title: "Calamares Extensions 1.2.1"
excerpt_separator: <!--more-->
---

There is a new irregular release of Calamares Extensions.
[Calamares Extensions](https://github.com/calamares/calamares-extensions)
are additional modules for Calamares that do not fit in the "core"
Calamares release -- extra-specialised modules, OS-specific modules,
and modules for unique situations.

<!--more-->

This release contains contributions from (alphabetically by first name):
 - Anke Boersma
 - Otus9051

Core changes in this release:
 - requires Calamares 3.2.46 or later.
 - adjusts module-building to newer Calamares-release conventions.

Changes and new modules in this release:
 - *refind* is a new module that installs the rEFInd bootloader. It can
   be used instead of the *bootloader* module from core Calamares. (Thanks Anke)
 - *unpackfsc* is a new module that uses `unsquashfs` directly. This may
   be faster or more convenient than the *unpackfs* module from core Calamares.
   The configuration file supports only one entry, but is otherwise easy to
   adapt from an existing `unpackfs.conf`. The module can also use `fsarchiver`,
   although currently only in *savedir* / *restdir* mode (not *savefs* / *restfs*
   which deals with block devices).


## Feedback ##

If you experience an issue with Calamares Extensions, please tell us all about it
on the [**Calamares Extensions issue tracker**][1].

[1]: https://github.com/calamares/calamares-extensions/issues
