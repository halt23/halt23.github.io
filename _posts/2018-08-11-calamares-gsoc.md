---
published: true
layout: post
title: "Calamares progress on Google Summer of Code 2018"
---
As explained before by Adriaan de Groot 
in this [post](https://euroquis.nl/bobulate/?p=1860) on his blog,
Calamares have participated in the Google Summer of Code 2018.

Caio Jordão Carvalho worked on finishing LVM support
on Calamares, which included the following updates:
    - Fixed some important LVM bugs, such as
    revert operation when you got a previously created Volume Group.
    - Create new LVM Volume Groups.
    - Resize LVM Volume Groups.
    - Deactivate LVM Volume Groups.
    - Remove LVM Volume Groups.

This [patch](https://github.com/calamares/calamares/commit/3b82e655d720179fe62901a620eb0796f50ef1d5) 
contains the new updates,
which were merged to Calamares' master branch.
Further descriptions about Caio's implementations can be 
seen in his [blog](https://carvalho.site/category/gsoc).

Another update that will be included to Calamares is RAID support.
This support involved the visualization of software RAID (i.e. mdraid) arrays
and manipulation of the partitions from these devices. 
Caio already have commited a patch
related to it in kpmcore library, 
as you can see [here](https://cgit.kde.org/kpmcore.git/?h=raid-support), and have
implemented updates on KDE Partition Manager's GUI to allow these operations.

He is improving the code to get more stability and these functionalities
will be available soon for Calamares as well.
