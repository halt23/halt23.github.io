---
published: true
layout: post
title: "How Calamares is Developed"
excerpt_separator: <!--more-->
---

[Calamares](https://calamares.io/) is a distro- and desktop-agnostic 
Linux installer. It is developed in the open, over on GitHub, but much 
of the development "vibe" is from KDE. The 
[contributor's guide](https://github.com/calamares/calamares/blob/calamares/CONTRIBUTING.md)
discusses some of the technical and social norms, but it does not (yet) describe 
the day-to-day working of the project. There have been some recent 
long-and-tedious discussions in issues recently. Aside from them being
long, tedious, and off-topic, they also misunderstand how the project works
and what resources are available. So! Some clarifications ..

<!--more-->

## Actions Speak Louder

A feature request is a request. It goes on the list of [open issues](https://github.com/calamares/calamares/issues),
generally with the "[feature: new](https://github.com/calamares/calamares/issues?q=is%3Aissue+is%3Aopen+label%3A%22feature%3A+new%22)" tag. I'm grateful to Anke Boersma of
[KaOS](https://kaosx.us/) for watching over issues and tagging appropriately.

The list only shrinks when someone (anyone! See "[time available](#TimeAvailable)" and "[how to help](#HowToHelp)", below)
works on a thing. Actions speak louder than words, so the **absolute best** way of moving something
forward is to actually implement the feature yourself. The second-best way is to **describe exactly**
what needs to be done (external commands, specific system calls, ..) to achieve a goal.
Once you reach "here's a link to an Arch-wiki page" or "it would be cool if .." issues,
the expected implementation rate drops dramatically.

> The [Arch wiki](https://wiki.archlinux.org/) is a good learning resource,
> but it's also extensive, cross-linked, contains historical information,
> and addresses the most general setup -- it's not a great resource
> for **me** to get one specific thing done in Calamares.


## Time Available

There are 168 hours in a week. 

This may sound trite, but there are a couple of people working -- paid or volunteer --
on Calamares, and they certainly don't spend all the time on Calamares.
The "[in progress](https://github.com/calamares/calamares/issues?q=is%3Aissue+is%3Aopen+label%3A%22hacking%3A+in-progress%22+)" label is used to indicate what is **currently** being worked on.
Often there is only one issue labeled that way.

That doesn't mean that an issue marked "in progress" is going to be
the next one resolved. Sometimes there's a hotfix. Sometimes a
simple issue is reported that can be quickly resolved. Sometimes
people ask nicely for something and it gets attention.

This adds up to "things are done when they're done" and as far as I'm concerned,
it's how really-small-team development should be done. The short-cycle releases
of Calamares -- roughly every two weeks -- are there to get fixes and new features out
to distributions relatively quickly. Those same short-cycles mean
that there are no blocker issues: I've given up on saying "this issue will be resolved for the next release".


## How To Help

I'm glad you asked!

You can help by contributing source -- that is both documentation and code --
or by writing good issues. You can help by **not** doing some things that
clutter up issues.


### Contributing Source

First and foremost: PRs (pull requests, merge requests -- your source contribution
to Calamares) are **welcome**. They get reviewed, generally there's some
minor changes to be made, tests to be added, and then things are merged.
Don't forget to add your name to the `CHANGES` document!
We like to give credit where credit is due.

One *possible* approach to contributing source is to write an issue
describing the problem, and then immediately opening a PR addressing that issue.
The PR does not need to be complete! You might even want to use something
like this:
```
git commit --allow-empty -m "FIXES #1"
```
That adds an empty commit which will close the issue when the PR is merged.
Make a PR with it and mark it as work-in-progress. That way, it's visible that
you are working on something and comments can be added already.

Note that this is just **one** possible approach. If you want to work
differently, that's fine. Completed PRs out of the blue are fine. Mentioning
you're working on something in an issue and then submitting a PR is fine.
Imperfect PRs are fine -- they can be merged and then fixed-up if it's
cosmetics, or reviewed and improved.

There is more than one way to move things forward, but all of them involve picking something up and taking a step.


### Where To Work

Calamares is a **modular** installer. There's 61 modules in the "[core](https://github.com/calamares/calamares)"
distribution, and another 7 in the "[extensions](https://github.com/calamares/calamares-extensions/)" repository.
Some Linux distributions, like [Lliurex](https://github.com/lliurex),
have their own specific modules.

Fixing bugs should happen in a fork of the parent repository. New features if they apply to a module
already existing, should happen in a fork of the parent repository. New **modules** with new
functionality are a little tricky:
 - If the new functionality is useful for everyone, and is an obvious necessity for all Linux installations,
   add a new module to the "core" repository. Discuss this on Matrix or IRC first.
 - If the new functionality is useful for lots of people, add a new module to the "extensions" repository.
 - If the new functionality is useful for some people, not distribution-specific but is useful only
   for specific kinds of environments (e.g. it targets
   distributions that use KDE Plasma as the primary desktop) then add a new module to the "extensions" repository.
   Take care to check for dependencies carefully.
 - If the new functionality is distribution-specific, do it in your own repository. The extensions (and Lliurex)
   repositories can give you an example of how to set up such a repository so that it is easy to build and install against
   Calamares releases.


   
### Contributing Translations

Translations of Calamares happen on [Transifex](https://www.transifex.com/calamares/calamares/dashboard/).
The [translator's guide](https://github.com/calamares/calamares/wiki/Translate-Guide) in the Calamares
wiki should tell you all you need.

> The wiki is **also** something you can help out with. It should tell you all, but if it is unclear,
> incomplete, or if things change in the world and the wiki becomes inaccurate, then updates
> to the wiki are welcome, too. Come in and ask questions to get things sorted out,
> and the **best** thing you can do then is help others by updating the documentation
> with better or more extensive information.

Starting a new language translation is fairly straightforward; there are 80 langauges or so
under translation, with lots of possibilities. However, please do not start
geographic-variant languages (e.g. Nepali `ne` and Nepali-in-Nepal `ne_NP`)
unless you can explain very well why the translation would be different,
specifically for Calamares. Different scripts (e.g. Serbian in latin and cyrillic)
qualify, as would very different vocabularies (e.g. French and Québécois).


### Contributing Issues

There is an extensive [how to file an issue](https://calamares.io/issues/) guide (thank you to
Anke for writing it). It is **really** important to help us help you. If you leave out
which distribution you are using, there's only a 20% chance we can even guess the right **family**
of distributions.

Write down what you did, what you clicked, and what the effect was. Sometimes
the hardware matters, too. It might not be possible to reproduce the problem --
if it can be done in VirtualBox, that has the highest chances of being fixed.

Issues that do not have enough context will simply be closed.

If your distribution or packaging or configuration files are broken,
then issues are likely to be closed unless you provide links to
the relevant parts. A downloadable ISO image is preferred -- so that
whatever problem can be demonstrated in VirtualBox.
One thing with distribution issues is that you **must** include
a suitable log file. Run Calamares with `-D6` to get full debug
output in the log. Read the log before you post it: Calamares
does a reasonable job of explaining what it is doing and
what problems it might encounter.

Remember that many commands run in the installed chroot: just because you can
`pacman -S vim` from the live-ISO environment, doesn't mean that the same will
work in the chroot during installation: you need to have `pacman` in the chroot, with DNS working, with suitable databases and mirrors, etc.

All in all: help us help you by providing a complete and reproducible description of the
problem. Don't expect things to be solved immediately -- and if you are a user of
a distribution, it will take some time to get the fix out to the distro anyway.


### Please Don't

The [Code of Conduct](https://github.com/calamares/calamares/wiki#code-of-conduct) applies
to issues as well. Comments and whole threads may be removed if they do not abide
by that code. In general: be patient, be kind.

 - Do not discuss irrelevant things in an issue. This includes topics like
   performance measurements in unrelated projects, quantum encryption (even in
   issues related to encryption), the Linux ecosystem as a whole,
   and muffins. An issue is a problem statement, followed by clarifications,
   hopefully followed by a resolution.
 - Do not post "is this done yet?" If the issue is open, it is not done.
   The "[in-progress](https://github.com/calamares/calamares/issues?q=is%3Aissue+is%3Aopen+label%3A%22hacking%3A+in-progress%22)"
   issues can tell you what is being worked-on **now**.
   If you test the problem and it no longer occurs, feel free to post
   "this has been resolved, please close."
 - Do not post "this is dumb". See the code of conduct, and also remember that
   there are **many** distributions out there,
   and some will make very different decisions from your distribution.
   If someone has a feature request, that's all it is. Feature requests
   may be implemented -- faster if someone does their own work.
   Ask for clarification,
   describe potential problems, but "this is dumb" is not the problem.
 - If an issue starts to discuss what "the Calamares team" might, or
   might not, do, just stop. You can ask -- on IRC or on Matrix -- if
   you want a real-time answer, for instance whether something is feasible
   at all, or where some work should be done. Speculating on motives is entirely off-topic.
   **You** can be part of the Calamares team by submitting good code, good documentation,
   good translations and good issues.


## Takeaway

Calamares development is *collaborative*, and also un-directed. There are regular releases
so that fixes do not get stalled waiting for other things to get in. 
Things are done when they are done.
You can help.
