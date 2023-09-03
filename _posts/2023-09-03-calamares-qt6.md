---
published: true
layout: post
title: "Calamares and Qt6"
excerpt_separator: <!--more-->
---

Calamares 3.3.0 will have at least rudimentary Qt6 support.
The libraries build, and so does the main executable and the
welcome and finished modules. This means that a "purely Qt6"
Calamares might be possible, except for the dependencies
on KDE Frameworks and KPMCore which have not had suitable releases yet.

<!--more-->

The name of the silly fake distro has been updated, too.

<img src="/images/2023/calamares-3.3.0.webp" alt="Calamares 3.3.0-alpha3 with Qt6" width=640 />

In the interest of planning the next release, here are some
items that I think are required to get the 3.3.0 release
out the door:
 - Qt6 compatibility for the whole build.
   This may mean dropping other bits of functionality like
   macro expansion until there is a suitable KDE Frameworks release,
   and the Qt5 build should still be the production version.
 - Complete the namespace-conversion (drop namespace `CalamaresUtils`).
 - Drop Boost::Python and write the (very small) Python bindings by hand.
 - Restore the installation of config files from the repo.
   This was removed for 3.3.0-alpha2 because forking the repo
   to modify the configuration is a terrible idea. But this also breaks
   patching-the-configurations at build- or packaging-time,
   which is a legitimate use-case.

## Feedback ##

If you experience an issue with Calamares, please tell us all about it
on the [**Calamares issue tracker**][1]. For a full change list, see
the full list of [issues closed][2] within the current generation (which is many releases).

[1]: https://github.com/calamares/calamares/issues
[2]: https://github.com/calamares/calamares/milestone/82
