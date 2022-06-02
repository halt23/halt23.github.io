---
title: "Partition"
permalink: /docs/partitions/
excerpt: "What part of the disk do you want to overwrite?"
last_modified_at: 2021-01-04T15:19:22-04:00
toc: true
---

Using the correct partition setup, most suitable filesystem and partition-table is the most challenging part for anyone new to installing an Operating System.

Make sure to back­up any data you might need from your drive before proceeding.
{: .notice--danger}

If your target install medium (HDD, ssd, usb-stick as examples), is not formatted and partitioned or not set up to your liking, you can do so from within the Installer. If the target medium isn't visible, see the [troubleshooting](#troubleshooting) section below.
{: .notice--info}
For both UEFI and BIOS systems, hovering over the respective info buttons will give you some more information for the different options for each.
{: .notice--info}

### Options
{: .offset}

This installer gives you four options to use.

Automated options:
 1. Shrink an existing partition and install alongside any other OS already available on your system, using a filesystem selected as default by your distribution.
 2. Choose an existing partition to be replaced with a new installation using the same filesystem type already present on the partition.
 3. Use the entire disk and will create one partition where all will be installed under root, all other partitions will be removed and the filesystem used will be the default set by your distribution.
 
Manual options:
 1. This method gives you the freedom to set any option, any filesystem and partition table, but leaves it entirely up to you to completely break the install too. **Make sure you know what you are doing**.

### Install alongside an existing partition
{: .offset}

After selecting which partition you want to shrink to create room for your install, you can drag in that partition to set the desired size.  Also shown here is the option to encrypt the system with password set.

### Replace an existing partition
{: .offset}

Once you select the partition you want to replace, the preview will show the `after` bar.  Also shown here is the option to encrypt the system with password set.

### Use the entire drive
{: .offset}

FAT32 EFI partition also created if the system is UEFI, with swap assigned if disk size allows and your distribution has a swap option set.  This will remove all data and installed systems from the selected drive.

### Manual partitioning
{: .offset}

If you want to completely clean the drive and start over or if this drive has no partition table at all yet (new media, virtualbox install), you have to make a decision what partitiontable to use. Default in the installer is GPT, ms-dos is the older option (still more commonly used for BIOS systems). Advantage of GPT, it can use virtual unlimited primary partitions (ms-dos is limited to four), is needed for drives larger than 2 Tb and is best for UEFI systems. If you choose to use GPT on a BIOS system, make sure to set it up correctly, with the needed 8 MB partition of unformatted space at the beginning of the drive and having the bios_grub flag assigned to that unformatted partition.  This setup cannot have a seperate /boot partition.

Once the partitiontable is set, you need to partition the drive, minimum needed, one partition for / (root). There are some advantages to using a separate partition for /home, and you might like to have a swap partition for sleep/hibernate. Any other partitions is strictly personal choice, though setting up /usr is not very well supported in systemd (you'll have to use extra steps to make that work correctly).

**New Drive** Select `New Partition Table` for a new drive or to switch from ms-dos to GPT or vice versa.
Highlight `Free Space` and select `Create`.  You then get a window with options to set partition type, file system and mountpoint. When using an UEFI install, it is a must to have a vfat (fat32) formatted /boot partition available. Best set the size to 512Mb and have it at the beginning of the partition-table. Once root is set, the Next button will become active again.
{: .notice--info}

**Adjust Drive** Using the fourth option to adjust existing layout. Select `New Partition Table` for a new drive or to switch from ms-dos to GPT or vice versa.  
Highlight a desired partition, and select `Format`. If this is going to be the root partition, it needs to be formatted. If old files are still present it will most likely result in a broken install. Next select a Mountpoint, root needs to be set, for UEFI install /boot needs to be set too. Repeat these steps for any other partition you want to use for this install. Once root is set, the Next button will become active again. Options are available to encrypt partitions, this includes swap.
{: .notice--info}


### Troubleshooting

**My disk isn't visible!** If you cannot select the disk you have in mind -- if the disk is
not in the drop-down list of devices -- then Calamares has *some* reason not to want to
install on it. Perhaps you have mounted the device (to browse files on it, for instance).
Umount the device. Some systems are very agressive about using all available disks
for swap. Turn swap off. Calamares tries to do that for you, but might not succeed.

Some disks look like CD-ROMs to Calamares. It will not offer CD-ROMs as an installation
target -- even if you know it's a USB stick or an eMMC drive. You can check with
`blkid -s TYPE -o value /dev/disk` (where `/dev/disk` should be the Linux
name of the device you intend to use, like `/dev/mmcblk0`). If it says *iso9660* then
you'll need to manually edit the disk first.
