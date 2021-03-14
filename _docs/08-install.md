---
title: "Install"
permalink: /docs/install/
excerpt: "When you reach this step, Calamares does the actual work of doing the installation."
last_modified_at: 2021-01-04T15:19:22-04:00
---

When you reach this step, Calamares does the actual work of doing the installation. Since this can take a long time, you can watch a slideshow here. Some distributions even let you play a game while you wait!

You can follow what the installer is doing at different stages though. Expect this part to take between 5-10 minutes if this is an install that copies the Live system. At around 30%, the copying of the files is completed (which will take the longest), then the installer will create the users, remove Live system specific packages, install additional packages, remove any language packs & drivers not needed for your specific hardware, setup either GRUB for BIOS systems or Systemd-boot as bootloader, all depending on your distribution's specific settings.

If your distribution offers a netinstall, then the install time depends on the amount of packages that needs to be fetched and your internet speed. Don't be surprised if such an install will take an hour to complete.
