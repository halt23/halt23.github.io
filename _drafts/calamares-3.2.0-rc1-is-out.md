---
layout: post
title: "Calamares 3.2.0-rc1 available"
---
The [Calamares team](https://calamares.io/team/) is happy to announce the
availability of **Calamares 3.2.0-rc1**, a (testing) pre-release
of the upcoming features-and-functionality of Calamares 3.2.0.
This is the new series of Calamares releases following on
from the stable 3.1 series.

Calamares is a distribution-independent system installer, with an advanced
partitioning feature for both manual and automated partitioning operations.
Calamares is designed to be customizable by distribution maintainers without
need for cumbersome patching, thanks to third party branding and external
modules support.

<!--more-->

Calamares 3.2.0-rc1 is a features-and-functionality release.

* KCrash (known from the desktop helper *Dr Konqi*) is now an optional
  dependency; it can help developers and users report problems with
  Calamares.
* New translations Hindi, Marathi (thanks to *asaagar*) and Albanian
  (thanks to *besnik*) are now available.
* Documentation improvements
  (thanks to *crazy*, *rajudev*).
* Minor polishing and tidying all over the place
  (thanks to *bezzy1999*, *bill-auger*).
* It is now possible to configure Calamares to "phone home" at the
  end of an installation and to configure *update-manager* with
  a machine-specific URL.
* A new module supporting OpenRC initialization of encrypted filesystems.
  For distro's that do not use systemd, the `openrcdmcryptcfg` module
  can be used alongside other modules.
* A new module for KDE Plasma Desktop has been added. This allows
  the selection of the Plasma Look-and-Feel from the installer.

Upcoming before 3.2.0 is finalized:
* KPMcore 3.2 is required.

If you experience an issue with Calamares, please tell us all about it on the [**Calamares issue tracker**](https://github.com/calamares/calamares/issues). For a full change list, or the full list of [issues closed](https://github.com/calamares/calamares/milestone/41?closed=1) with this release, please see the Calamares code repository.
