---
title: "Tracking"
permalink: /docs/tracking/
excerpt: "This module is disabled by default, and its default configuration turns off all tracking as well."
last_modified_at: 2021-01-04T15:19:22-04:00
toc: false
---

This module is disabled by default, and its default configuration turns off all tracking as well. No distribution is known to use it.
{: .notice--info}

Calamares can be configured to do installation tracking. If it is, you will get a page in the installation process that asks you to enable installation tracking. If, and only if, you enable installation tracking, then Calamares will send information once only about your hardware to the server configured by the distribution.

![](https://github.com/calamares/calamares/wiki/img/tracking.png)

This is used by distributions to count how often they are installed, and on what kinds of machines -- which helps the distribution tailor its packages to the machines its users typically use.

When Calamares sends information about the hardware, it sends:

 * the make and model of your CPU
 * the amount of main memory
 * the total amount of attached disk
 * As part of sending this information, Calamares necessarily makes your IP address known to the receiving party.


