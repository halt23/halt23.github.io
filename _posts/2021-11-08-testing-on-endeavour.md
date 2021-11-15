---
published: true
layout: post
title: "Testing Calamares with Endeavour and Xero"
excerpt_separator: <!--more-->
---

[Calamares](https://calamares.io) is a distro-agnostic installer for Linux.
It can be used [and tested](https://calamares.io/testing-on-neon/)
on KDE neon. Today, let's look at building and testing Calamares
on two Arch-based distro's, [Endeavour](https://endeavouros.com/)
and [Xero](https://xldb.techxero.com/). It's going to be short, though,
because the takeaway is this:

**It is just as easy to build and test Calamares on an Arch-based distro, as on KDE neon**

<!--more-->

> I'm going to assume you have at least **looked** at the [testing on KDE neon](https://calamares.io/testing-on-neon/)
> post, and skip over some bits described there.

The virtual machine is the same as before: VirtualBox, 4 cores, 8GiB RAM, 32 or 16GB disk.
Today one virtual machine is UEFI, the other BIOS. It doesn't matter for Calamares.
The ISO images are ones I had sent to me by the developers of the distro's,
so I won't link them directly: I have something called `endeavouros-devel-2021.11.05-x86_64.iso`
and `xerolinux-main-2021.11-x86_64.iso` which you might be able to get from the
distro sites -- otherwise, get whatever latest release there is.

Start a terminal -- Xero has `konsole` in the it-might-be-Latte-dock along the bottom edge of the screen,
while Endeavour has XFCE-terminal in the panel. Download the Calamares [deployment script](https://github.com/calamares/calamares.github.io/blob/calamares/deploycala.py)
(remember: this is for development purposes and may mess up your system if you do it on an installed machine).

<img src="/images/2021/xero-1.webp" alt="Xero Linux, konsole downloading Calamares script" width=640 />

Run the deployment script and let it do its thing: `python3 dp.py -N -n` will build and install Calamares.
This takes a minute or maybe three -- depends on how fast the machine is, how many VMs are concurrently
building, that kind of thing.

<img src="/images/2021/end-1.webp" alt="EndeavourOS, Calamares script completed" width=640 />

## Testing on Xero Linux

Xero has the configuration files stored in `/etc/calamares` (as is recommended)
and has a fairly straightfoward configuration: welcome, pick some packages,
partition, go for it.

Once Calamares has built and installed itself, it can be run with debugging
cranked up. It does not need to run in developer mode (although adding `-d` works,
too -- whether this is needed, depends on what kind of testing / development you want to do).

```
sudo calamares -D6
```

The Calamares sources are checked out in the live-user's `~/calamares` and are built
in `~/calamares/build`. To modify Calamares itself -- as opposed to the Calamares
configuration -- edit files in the source, then run `sudo make -j install`
in the build directory.

<img src="/images/2021/xero-2.webp" alt="Xero Linux, installation going on" width=640 />

## Testing on EndeavourOS

Endeavour supports two kinds of installation: online and offline. The online
installation offers package-selection and allows customizing the desktop environment,
which requires different modules in Calamares. The welcome-application for Endeavour
has a "Install" button, which lets you pick which one to use.

To make the choice manually, we need to rename one of the two configuration files
so that Calamares can find it. Then we can run Calamares with suitable debugging flags.

```
cd /etc/calamares
sudo cp settings_online.conf settings.conf
sudo calamares -D6
```

<img src="/images/2021/end-2.webp" alt="EndeavourOS, installation going on" width=640 />

Endeavour has done some cute things with CSS in styling Calamares. Using the online
configuration file allows us to choose a desktop environment in the installation,
as well as other software.

## So What's it For?

Why bother with all this deployment-shenanigans in live-ISO environments?

The key point, for me, is **helping out distro's**.

By making it easy for me to build Calamares from git in all kinds of
places, I can help distro's if there are problems with Calamares on
their live-ISO. I can jump to the latest version (e.g. to see if
Debian 11 could be better) or cherry-pick an unreleased fix
(which can drive a faster release cadence), or just to
nit-pick  (I mean improve) the configuration for distributions.

> Hey, Xero, did you know you can hide package names in the *netinstall*
> module, so it looks nicer for users who then don't need to deal with
> a giant tree of package names?

Today, concretely, I'm dealing with an issues reported by EndeavourOS
developers (in chat), then confirmed by Xero Linux (in chat).
While I can set up configurations locally to duplicate the
conditions of the issue, it is far **far** easier to just grab
the environment where the problem occurs already.
By working on Calamares source right in that environment,
turn-around on issues is much shorter.

## Takeaway

[This commit](https://github.com/calamares/calamares/commit/ead641c3448a6dcdd928d8f6787d8c9ae2fee8bd)
resolves the issue that was reported.
