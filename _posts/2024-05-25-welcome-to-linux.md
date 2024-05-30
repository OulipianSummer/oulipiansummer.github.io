---
layout: post
title: Welcome To Linux, A Practical Guide for Complete Beginners
date: '2024-05-25 17:47:33 +0000'
categories: [Welcome To Linux]
tags: [welcome to linux, guide, linux]
pin: true
---

I would like to personally welcome you to the ever-growing, ever-changing, and ever-improving community of Linux: a privacy respecting, stable, secure, infinitely customizable and free-to-use operating system designed for home and professional use. I have written this guide to help consolidate the massive (and sometimes confusing) body of information about this software into an easy-to-digest, non-technical introduction to Linux for personal use.

Specifically, I will try to address a lot of the whats, whys, and hows surrounding this operating system, answer some common questions, debunk some myths, and introduce you to the fastest and easiest pathways to successfully start using Linux on your home computer with no prior experience. This is not an advanced tutorial, and I will make no assumptions regarding your technical prowess. At no point during this guide, or at any time after it, will you need to open up a terminal or enter prompts into an old-school command line interface (unless you chose to, which is also valid!). At most you will need a access to this guide, a computer with an internet connection, and the ability to follow simple instructions.

At the end of reading this guide, my greatest hope is that you walk away with the information that will free you from the seemingly endless litany of disappointments, frustrations, threats to your privacy, and strains on your wallet imposed by the two primary commercial operating systems: Mac OSX and Windows. 

Furthermore, I will add to this guide over time to appeal to different user groups and those with different levels of experience or interests. Think of these additions as diversions or breakout sessions: optional, and perhaps slightly more technical deep dives that answer specific questions or speak to unique experiences and situations. Given the fact that Linux is so customizable and flexible, it lends itself to a lot of unusual use cases that require some extra discussion for those interested. However, the core of this guide will be intended for complete beginners and none of this additional reading will be required to help you get started using Linux for every-day computing.

## How To Use This Guide

Currently, I am hosting this guide on my personal blog and I am going to continue adding to it in the following weeks and months. What you are reading right now is the introduction page. Think of this as the lobby of a large building. 

In front if you is a wide hallway leading up to a grand stairway. This is the primary path intended for most people, what I am calling "The Core Guide"-- the straight-forward, easy path to using Linux I was talking about earlier. If you only follow this path you will inevitably land at the stated goal of using Linux for your personal computing needs.

Dotted around the edges of the lobby are smaller corridors and paths that lead off of the main entryway. Think of these as the optional deep-dives I also mentioned above. I have labeled these as "Auxiliary Guides". You can peruse these at your leisure, and they may even give you more context, open new opportunities, and offer you alternative perspectives during your journey. However, they are not required to reach your ultimate goal.

Below, I have laid out a road map for the topics we will cover in the posts that make up this blog series. Feel free to reference it if needed.

*Note: at this time I am still adding to this guide and it is a work in progress! The lists below represent a the topics I have planned to write and discuss. Please be patient! I will make sure to complete this guide in time. :)*

### The Core Guide
- Introduction (you are here!)
- Distributions
- Desktops
- Decisions
- Installation
- Customization
- Support
- Community

### Auxiliary Guides
- Hardware Selection
- Linux For Gaming
- Advanced Customization
- Navigating the File Structure
- Navigating the Command Prompt

I will also provide a Quick Start Guide (TBD) that will summarize all of the information contained in The Core Guide into a simple 10-15 minute tutorial so you can hit the ground running right away. The main difference between The Quick Start Guide and The Core Guide is that instead of taking the time to let you make decisions along the way to better suit your use case or particular tastes, I will just tell you how to use and install a version of Linux that will fit most people's needs. I will also point you towards some resources to get acquainted with your new system.

Now that you have a basic idea of where this guide is going and what future posts may look like, let's get started with the basics.

The following information is intended to provide some background to what Linux is, explain some history, detail what the software ecosystem looks like, talk about how updates work (at a broad scale), and debunk some myths. If you're not interested in this and just want to skip ahead to the next major part, I encourage that! 

Check out the Distributions (TBD) section at any time to move forward in the guide.

## What is Linux?

Linux is a free operating system developed by a team of volunteers all over the world. It is designed to be highly customizable and modular, meaning that a user is able to modify any part of it according to their exact needs. Furthermore, it is compatible with a wide range of hardware and accessories, meaning it can run on just about any computer you have laying around. Linux is so flexible and powerful in fact that it has been used to power a wide range of computing devices, including:

- [Android OS](https://en.wikipedia.org/wiki/Android_(operating_system)), the ubiquitous smartphone/computer operating system developed by Google uses a modified form of Linux. This makes it responsible for powering [about 85% of smartphones](https://truelist.co/blog/linux-statistics/) (including those that are using something other than Android).
- Supercomputers. Linux powers all of the world's [500 fastest supercomputers](https://en.wikipedia.org/wiki/TOP500#Architecture_and_operating_systems).
- [Some tools](https://www.zdnet.com/article/the-iss-just-got-its-own-linux-supercomputer/) deployed to the [International Space Station](https://training.linuxfoundation.org/solutions/corporate-solutions/success-stories/linux-foundation-training-prepares-the-international-space-station-for-linux-migration/).
- [Chrome OS](https://wiki.gentoo.org/wiki/ChromeOS), the operating system behind Google's Chromebook.
- Valve's [Steam Deck](https://arstechnica.com/gaming/2022/02/linux-on-steam-deck-what-you-need-to-know-what-currently-works/) utilizes Linux to run games on its popular portable PC gaming device.
- Approximately [40% of all web servers](https://w3techs.com/technologies/comparison/os-linux,os-windows), and [over 90% of the most popular websites use Linux](https://www.zdnet.com/home-and-office/networking/can-the-internet-exist-without-linux/) to power their various web experiences.
 - a modest percentage of home computers (which varies per-year), but comfortably places it in 3rd place among the most-used home computing operating systems.

## A Brief History of Linux and Open Source Software

Linux was started by a Finnish-American software engineer named [Linus Torvalds](https://en.wikipedia.org/wiki/Linus_Torvalds) who began experimenting with building a new computer operating system in the late 80's and early 90's. To greatly oversimplify the history, he began building a sort of home-brewed operating system in his spare time and modeled it after some of the UNIX powered systems he had had the opportunity to study as a student at the University of Helinski. One day, he posted some of his early code on a handful of internet forums to get feedback and share what he had been working on, which drew the attention of some of the readers.

At the time, most computer operating systems were subject to lengthy and restrictive licenses that forced users to "lock in" to a specific software ecosystem and specific hardware even if it did not really suit their needs, forcing them to spend a lot of time and money for something that may now work (does this sound at all familiar to today?). In a very practical sense, these restrictive licenses (which were good for business and bad for consumers), led to a stall in the uptake of computers in several markets because most people (or universities, or businesses) could not afford the hardware or the training required to use them effectively. Furthermore, any custom software users wrote may have been subject to similar legal restrictions and may not have been free to share with their friends or coworkers without obtaining permission.

Faced with this reality, people took a lot of interest in Torvalds's code because some saw an opportunity to create an operating system that was free from similar restrictions and covenants. So people began reviewing the source code of Torvalds' operating system (which he later named Linux as an homage to the fact it was a spiritual successor to UNIX). Some readers began making additions, discussing those changes, and together with Torvalds established something of a coalition to figure out which new additions to add to the growing project. With time, this coalition became [The Linux Foundation](https://www.linuxfoundation.org/), a non-profit responsible for guiding the future development of the Linux operating system.

This marked the beginning of Linux as an open source project-- "open source" meaning that the code used to build the operating system was visible to the public, and able to be modified by anyone who took an interest in the project. Today, Linux bears an extremely permissive license called the [GNU General Public License](https://www.kernel.org/doc/html/latest/process/license-rules.html), which allows anybody to obtain, distribute, or modify the source code for any reason, personal or commercial, so long as the derivative product carries a similar license.

For newcomers to the concept of open source software, this might seem like a glaring security concern. If anyone can make changes or read the code, would this not mean that people with ill intent could make malicious changes or read the code looking for security oversights? The reality is that, yes, everybody can comment on and contribute to the source code of Linux, but there are still significant checks and balances, quality tests, and rigorous security reviews that every potential contribution is subject to before it becomes an official part of the Linux operating system. The current maintainers of the project are responsible for approving any change to the source code, so it isn't like anyone can just sneak some code in there without it undergoing some scrutiny or testing.

As a result of Linux fostering an open and collaborative contribution model it is able to benefit from the expertise of tens of thousands of skilled professionals from all over the world who review the proposed changes to the project and have a chance to amend, test, or reject any code before it gets accepted. This model of development is in direct opposition to the comparatively limited number of people who might be responsible for building a proprietary or "closed source" operating system like Windows or Mac OSX. Furthermore, because Linux is free to use, it is not subject to the same kinds of pressures as a commercial product that has to be released on a specific timeline on a specific budget, meaning that thee is more incentive to build new features the right way instead of the fast way.

## Updates and Stability

This is an important fact to keep in mind: Linux has been around for a long time, slowly and steadily improving with each subsequent release. You can think of it as the tortoise racing the hare-- Mac OSX and Windows (the hares in this particular metaphor) often release huge, ambitious, and visually appealing features at a very fast rate, sometimes several times in a single year. However, these releases are often prone to bugs, security issues, and unexpected delays that affect user experience.

Sometimes, entire features get scrapped because the company behind them is rapidly shifting focus to some new and more lucrative opportunity. Google in particular is guilty of this last one, having racked up [a veritable graveyard of discontinued projects](https://killedbygoogle.com/), some of which were exceptionally popular before getting the axe.

Conversely, and partially because it is inherently non-commercial in nature, Linux's development cycle tends to be a bit slower than you might be used to from other operating systems. This is OK, and it is part of the nature of open source software. It is also an indication that the work is being done intentionally to improve the user experience and not just because a corporate executive wants to turn a profit (although plenty of commercial companies do pay their employees to contribute to Linux because it is an indispensable asset in their work).

An example of this in action is the fact that Linux runs exceptionally well on both very old and very new hardware because the maintainers have committed to providing long term support for those legacy devices. There is a long running tradition in some circles of reviving ancient hardware with Linux because that computer doesn't receive official support from the original manufacturer anymore even though hardware is in good condition. The number of people using that hardware is probably too few to count, but the Linux community continues to support those old devices in the hopes that it might be useful to somebody.

That's the power of community at work. By working together, everybody benefits, and those benefits are spread around evenly, not just to those with the newest hardware or the most money.

As one Linux user on Mastodon noted, Linux is slowly improving on this model and it is getting better every day. The user made these observations about Linux when comparing it to Windows just after the announcement of Microsoft's [controversial](https://www.forbes.com/sites/thomasbrewster/2024/05/28/microsoft-recall-feature-is-always-watching/?sh=409401778bfc) and [invasive](https://www.bleepingcomputer.com/news/microsoft/microsofts-new-windows-11-recall-is-a-privacy-nightmare/) Recall feature set to be released in Windows 11.

> If you have to choose between something that used to be crap but is slowly getting better [Linux], and something that used to be alright but is getting inexorably worse [Windows], the best time to jump is gonna be when you get to see and take joy in the getting-better bit.
> 
> If you leave it too long and the thing you're jumping from has gotten intolerably, unusably bad, you'll be in a hell of a panic and it'll probably be at a super-inconvenient time.  Give the new thing [Linux] a good sniff ahead of time and play around with it a bit in a non-vital setting, so that you're not moving in a horrible panicked rush.
>
> [@ifixcoinops@retro.social](https://retro.social/@ifixcoinops/112496814370830656)

## Debunking Some Myths

The unfortunate matter is that the nature of slow and incremental improvements has led to Linux getting the reputation of being old, behind the curve, and just plain boring. While I won't weigh in on the subjective nature of these claims (because they might actually be strengths depending on how you look at them), I will point out that commercial operating systems have a financial interest in trying to portray Linux as old, unreliable, unintuitive, or generally just a confusing operating system compared to their own products. 

It is important to remember that in the grand history of computers, these criticisms have been true of *every* operating system that has ever existed. For example, MS DOS and Apple II weren't exactly walks in the park, but they were considered easy to use at the time! 

Arguably, Linux has taken a little bit longer to catch up to the personal computer market. There is a long running joke in the Linux community that *this year* (regardless of what year it is right now) is the year of the Linux Desktop, as evidenced by some new improvement or software that will surely make it friendlier for new users. The reality is that it is always the year of the Linux Desktop. Linux is continually getting better and becoming easier to use, and the sooner you start the easier and better it will get. Furthermore, and to lean into the joke a little bit, Linux has never been more ready for personal desktop usage than it is at this very moment.

With modern Linux, as with *any other modern operating system*, you can install your favorite apps from an app store, play popular games, print documents, browse the web, manage your finances, call friends, get work done, record and edit media, and so much more. This is all available to you right now without jumping through a thousand hoops, pouring over developer documentation, writing code, learning a litany of annoying hacks and tweaks, or opening a terminal. The process of using a Linux computer may look a little different than you might be used to, but there is no reason to suspect that you will be left high and dry at any point during your experience.

Plus, if the worst ever does happen, there are tremendous amounts of easy-to-read documentation to help you understand what to do, and hundreds of communities of Linux users who are learning alongside of you who are more than willing to help you fix things. Of course, this is the internet, so there are some grumps, trolls, and other generally rude people, but if reading this blog is your first experience with the Linux community at large, I want to assure you that there are so many more kind, generous, thoughtful, brilliant, and patient people in this community who want to see you succeed.

So, in the spirit of clearing the air a bit, here are a few more Linux myths that I want to address.

**Myth: Linux is difficult to use / too niche / only for programmers.**

Although Linux has traditionally been popular with programmers and niche markets because of its extensible design, it is not inherently hostile to new users. What really matters is which flavor of Linux you choose to use. Some are much more reminiscent of Mac OSX and Windows in terms of a clean, modern user experience, and others are geared more towards tinkerers, programmers, and business executives. This is a fairly lengthy topic that we will touch on in the Distributions section of this guide, but for now know that your experience has a lot to do with which version of Linux you choose, and there are *a lot* of choose from.

**Myth: Linux doesn't have X, Y, or Z app.**

This is a common criticism lobbed at Linux that does have some validity because of the simple fact not every app is going work on every system-- that's just the nature of software. That said, many popular applications do have official Linux releases, and those that don't often get brought over to Linux by community members who repackaged that application to work on Linux. Sometimes, even if there isn't a community powered port of your favorite application, there are still ways you can run it on your Linux system.

For example, Adobe does not make any official releases for PhotoShop for Linux. However, you can still download the latest version of PhotoShop for Windows and run it on Linux using a program called [WINE](https://wwww.winehq.org). WINE stands for **WINE** **I**s **N**ot an **E**mulator, and true to its name, instead of emulating the Windows environment or Windows hardware, it provides a basic, Windows-like environment and Windows software out of which you can install and run Windows applications as if they were a Linux application (including many popular games, for those interested). So, to a large extent, you can run most Windows applications on Linux, no problem. Mac OSX apps are getting a similar treatment with a new piece of software called [Darling](https://www.darlinghq.org) which is still in development, but one day promises to help you port Mac-only applications onto Linux.

And if for whatever reason you can't find an app with a community release or good support in either WINE or Darling, you can also just take a dive into the giant ecosystem of apps designed especially for Linux, of which there are thousands to choose from, many of which actually run smoother than a community powered port.

**Myth: Linux doesn't have any official support, and the users are rude.**

Like I said earlier, unfortunately, this is the internet, and there are rude people out there. But on the upside, there are plenty of good people out there who are willing and able to help you, but you need to know where to look for them. As a part of this guide, I will post links to Linux support communities that are well equipped to help you solve your specific problems. Some of these communities are more geared towards nice topics like gaming or hardware, and others are more generally focused on helping you use and get used to your new operating system as a newcomer. 

Honestly I think what drives this myth is the fact that you can't always just go to some generic support website like those run by Apple and Microsoft, file a ticket, and jump on a call with a support agent. Although those experiences do also exist in the Linux world, you just need to know where to find them (if you even want them at all). Either way, I aim to make sure you are in good hands before sending out into the world. For more reading, see the Support (TBD) and Community (TBD) sections of this guide.

## Wrapping Up

That about does it for the introduction section. Next we're going to actually start making decisions about what version or flavor of Linux (often called a Distribution or "Distro" for short) that best fits your needs. We'll be exploring some of the most popular and most user-friendly distros, and explain how you can leverage specific distros to replicate familiar workflows or aesthetics found on Mac OSX or Windows.

Click here to read the next section on Distributions (TBD).
