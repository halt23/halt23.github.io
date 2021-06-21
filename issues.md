---
layout: single
title: Issues
header:
  overlay_color: "#000"
  overlay_filter: "0.8"
  overlay_image: /images/banner.jpg
toc: true
toc_label: "Content"
sidebar:
  nav: "links"
permalink: /issues/
published: true
# Trailing whitespace is important in this file!
---

Getting bugs fixed is an important, if not crucial part of the quality assurance for any project. To be able to solve any issue stands and falls with how a bug report is created.  When reporting try to include:

* Name of Distribution used
* Version of Calamares used (released version or git build)
* Logs & Screenshots
* Use the ISSUE_TEMPLATE provided for you when opening an issue

The place where to report bugs, issues, errors or feature request:  
[**Calamares Issues**](https://github.com/calamares/calamares/issues){:target="_blank"}  

## Developers of Distrubutions
{: .offset}

If you are a developer of a distribution and are new to Calamares, make sure to thoroughly read the Wiki pages provided for you.  See the links on the left.  Reporting issues is for bugs, errors, issues you may have found, or adding a new feature request.  Issues are **NOT** a help channel.  If you have questions left after reading the Wiki, use the IRC channel to get help.

When reporting an issue or feature request, include as many of the following as possible (in addition to the info requested above):

* Installation log
* Link to an ISO of your distribution
* Link to the settings.conf used
* List custom modules used (not part of upstream Calamares)
* Detailed description of how to duplicate the error/issue found
* Version used of GCC (or other compiler), KPMCore, CMake & Qt


## End Users
{: .offset}

Most of the time, Calamares issues is not the place for you to report issues, use the bug tracker of your distribution instead. Every distribution has their own implementation of Calamares and they can much better decide if the issue found is distribution specific or a general Calamares issue.

If you decide it is a general Calamares issue, make sure to include all information requested in the first section.  In addition provide:

* Is the issue related to a BIOS or UEFI system install?
* Are you using a GPT or msdos partition table?
* Try to find out from your distribution where they locate the installation.log and provide that log
* Many time disk layout used is needed, provide the needed info with `sudo blkid` & `sudo fdisk -l`

---

Calamares development is sponsored by [Blue Systems](https://www.blue-systems.com/){:target="_blank"}.
