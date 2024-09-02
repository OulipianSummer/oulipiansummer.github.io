---
layout: post
title: Welcome To Linux -- Desktop Environments
date: '2024-06-21 12:47:33 +0000'
categories: [Welcome To Linux]
tags: [welcome to linux, guide, linux, desktop environments]
---

Welcome back to part three of my beginner-friendly introduction into the world of Linux! This time we're going to be focusing on a facet of the Linux universe called Desktop Environments, sometimes abbreviated as "DE's". If you read my [previous post about Linux distributions](/posts/welcome-to-linux-distributions){:target="_blank"}, you will know that there are literally hundreds of options when it comes to choosing a new Linux personal computing system, but you may have also noticed that not every distro has the exact same look and feel. That's because in the Linux world you can select from among a couple dozen unique desktops, each complete with its own ecosystem of default applications, widgets, and customization options.

Even some distros come in different "flavors", each featuring a different desktop environment. Ubuntu is a great example of this, releasing [10 officially supported flavors](https://ubuntu.com/desktop/flavours){:target="_blank"}, some even suited for audio-visual work, education, and low-end desktops who need to conserve on computing power. It can be kind of wild to think that even after you have decided to switch to Linux and picked out a distro, there may still another decision to be made!

I'll be the first to admit that this area of Linux can be a bit of a deep dive, what with trying to keep all of the different DE's straight and remember what each of them can do. Just to add to it, there are millions of unique and interesting ways you can customize your desktop environment to your exact tastes, making the subject of desktop personalization a long and complicated discussion.

## Lat's Make This Simple

That said, there is no reason why we need to make it complicated! In my previous post about distros, I paid a little bit of lip-service to the overall look and feel of each distro to help put the workflow and screenshots into context. If you were happy with the way those screenshots looked, then you are free to skip this entire post! The "Download" links under each distro will take you to the default download page, where you will get the distro you want with the look you want. 

However, there are a few notable exceptions to this rule. Elementary OS only comes in one officially supported desktop environment called "Pantheon", which a was made especially for Elementary OS, so there really aren't any other choices. Likewise, Zorin OS only releases a single desktop environment, though they used to offer two. It is unclear whether or not they will return to a multi-release model or not. The final exception is OpenSUSE, which, when you download it, doesn't provide choices for different desktop environments. It's just a single download for everything. Instead, when you start up OpenSUSE, it boots into an installer where you can select which desktop environment you want to install out of several. Pretty nifty! And also a little confusing if you were expecting something else, so it is worth mentioning. Thankfully, the default, called "KDE Plasma" is pre-selected, so you don't have to make any extra decisions.

Then again, if you're curious about what you can expect out of some of the most popular desktop environments, what they look like, and how they may make your computer run faster (seriously, some can do that!), then read on.

## Desktop Environments List

I'm going to cover the eight most popular desktop environments and speak to what each of them is known for, how they work, and what kind of user they will most appeal to. Keep in mind, as always, that there is still a lot of flexibility in the way you can make your desktop look. Almost all DE's have their own plugin ecosystem that extend the way they look and behave, and every single one of them can be themed to pixel perfection. 

I've also broken up each of the desktop environments into different sub-categories that reflect the general "vibe" or "attitude" of each desktop environment.

At the end of this list, I will also include a short gallery showing off some of the more impressive things people have done to customize their desktop environments.

### The Powerhouses

>Two households, both alike in dignity,
>In fair Verona, where we lay our scene,
>From ancient grudge break to new mutiny,
>Where civil blood makes civil hands unclean.
>- Prologue to Romeo and Juliet by William Shakespeare

If you've spent any time researching Linux on your own, it's very likely you've heard of at least one of these two famous desktop environments: GNOME and KDE Plasma (sometimes just called "Plasma"). Both are feature-packed, come with powerful and intuitive tools for managing your computer, and are beautiful and easy to use right out of the box. Furthermore, each of the teams that make these desktop environments are responsible for developing applications that are used across the entire Linux ecosystem. Quite often, you will install another desktop environment altogether and still find GNOME-based or KDE-based applications on it by default. So pervasive are both of these desktop environments that there is a long-running joke that there is a sort of war between KDE users and GNOME users. 

Although not entirely accurate to be thought of as a war, there is an important distinction between these two DE's that plays out across many other desktop environments outside of just GNOME and KDE.

What makes each of them so different is the fact that they are built in slightly different ways. Without getting too deep into the technical details, GNOME and KDE are both built using different so-called "graphical toolkits" which have limited cross-comparability. GNOME is built using something called GTK, and KDE Plasma is built using something called Qt. This is akin to the difference between metric and imperial measurements in cars. American made cars make extensive use of imperial units, while European cars generally use metric units. This effectively means that if you use GNOME, which is a GTK-based system, it will sometimes be difficult to run specific KDE apps, which all use Qt, and vise-versa. 

Even then, it is worth mentioning that the biggest issue you will likely face is that if you use a GTK based system and install a Qt app on it (or vise-versa), that the color-scheme won't look consistent with the rest of your apps. If you can live with that, then the difference between the two toolkits is largely arbitrary and won't wreck your experience.

The only reason I bring this up is to highlight the fact that you may need to keep in mind which toolkit a specific app uses if your computer has limited performance, limited disk space, or both. If you find yourself in this situation, it is almost always advised to use apps that use the same toolkit as your desktop environment to save on resources. Then again, if you have a huge high-powered workspace with power to spare, then you can install whatever you like with reckless abandon. Go nuts. I mean it; it is a regular practice in Linux to install both types of apps on you computer and use both toolkits at the same time! The point is, you always have a choice.

#### GNOME
Graphical Toolkit: GTK
Distros that use GNOME by default: Fedora, Ubuntu, Zorin OS, Pop! OS (...sorta)**
Distros that have GNOME flavors: OpenSUSE

GNOME is a long-time favorite of the Linux world that has had a couple of different looks over the years. Initially, GNOME was a traditional desktop with a top bar and a Windows-style launcher. In more recent times, it has taken on a whole new look, leaning more into the look of an empty, distraction-free desktop with quick access to your apps through the use of a mobile-style launcher grid interface.

What makes GNOME so ubiquitous is the fact that is has a beautiful, well considered design elements, lovely animations, and lots of thheming potential. The developers of the GNOME

** The reason I mentioned Pop! OS as maybe-sorta-kinda using GNOME is because in the past it did used to use GNOME with some heavy modification in the form of plugins. Today, Pop! OS uses a brand new DE that the creators called COSMIC. For all intents and purposes, [COSMIC](https://blog.system76.com/tags/COSMIC%20DE){:target="_blank"} is still a very heavily modified version of GNOME, only now a lot of the ergonomic tweaks that the System 76 team used to ship as plugins to GNOME are built right in, and there are a lot more additions planned in the coming months. For our purposes here, you can largely treat COSMIC as GNOME with a lot of new goodies.

#### KDE Plasma
Graphical Toolkit: Qt
Distros that use KDE Plasma by default: OpenSUSE
Distros that have KDE flavors: [Fedora KDE Spin](https://fedoraproject.org/spins/kde/){:target="_blank"}, [Kubuntu](https://kubuntu.org/getkubuntu/){:target="_blank"}(KDE + Ubuntu), MX Linux

KDE Plasma has earned a reputation for being one of the single most

### The Simple

The DE's listed in this section are all, in some way, based off of GNOME, but are built look less like a tablet and more like a traditional desktop. The important thing about each of them is that they share some common features: there is a bottom bar that displays your applications (called a "launcher" or "dock"), and a top bar that displays system information (called a "bar" or a "panel"). Some of these DE's also come with a side panel that pops out to display extra information, expose a toolbar of system shortcuts, or show you a notification center.

Generally speaking, these DE's are designed with simplicity and form factor in mind. They give you just enough to get started using your computer and are pretty much set-and-forget solutions. They look great right after installing them, but offer a little less in terms of personalization. If you're comfortable with that (and who wants to make all of those fiddly little decisions anyway?) then these simple DE's may be just right for you.

#### Cinnamon
Graphical Toolkit: GTK
Distros that use Cinnamon by default: Linux Mint
Distros that have Cinnamon flavors: [Ubuntu Cinnamon](https://ubuntucinnamon.org){:target="_blank"}, OpenSUSE, [Fedora Cinnamon Spin](https://fedoraproject.org/spins/cinnamon/){:target="_blank"}

#### MATE
Graphical Toolkit: GTK
Distros that use MATE by default: None from the distro list in this guide, but they are out there!
Distros that have MATE flavors: Linux Mint, [Ubuntu MATE](https://ubuntu-mate.org/){:target="_blank"}, OpenSUSE, [Fedora MATE Spin](https://fedoraproject.org/spins/mate/){:target="_blank"}

#### Budgie
Graphical Toolkit: GTK
Distros that use Budgie by default: None from the distro list in this guide, but they are out there!
Distros that have Budgie flavors: [Ubuntu Budgie](https://ubuntubudgie.org/downloads/){:target="_blank"}, [Fedora Budgie](https://fedoraproject.org/spins/budgie/){:target="_blank"}

#### Pantheon
Graphical Toolkit: GTK
Distros that use Pantheon by default: Elementary OS
Distros that have Pantheon flavors: OpenSUSE

Pantheon was created by the Elementary OS team specifically for use in Elementary OS. Therefore, much of what makes Elementary unique comes from the fact that is built around Pantheon. There aren't a whole lot of other distros that use Pantheon, but it has been showing up more and more as a secondary choice for many popular distros like OpenSUSE.

Pantheon's whole aesthetic can be described as "old-school MacOS" (if you're familiar with Lion and Snow-Leopard era Apple and you will know what I'm talking about). As I've mentioned previously concerning Elementary OS, Pantheon offers a very basic set of system settings that don't offer much in the way of customization on purpose (so you aren't completely overwhelmed), but it does offer just enough to get your system set up the way you like so you can actually focus on using it.

Pantheon has a few cool features like a multi-tasking view, picture-in-picture support, a notification center with a do-not-disturb mode, and a handful of beautifully handcrafted default applications.

In general, pantheon is for users who want a simple, beautiful environment with no frills and no distractions. This is pretty much the same philosophy behind Elementary OS itself, with the added benefit of the fact that you can take a large part of what makes Elementary OS so great (just the desktop environment) and run it on a couple of other systems.

### Lightweight

One of the most common criticisms of both GNOME and KDE is that they are quite large. All of those cool features and animations come with a price, and depending on your mileage, that price is that your desktop environment may consume anywhere between 1.5 to 2 Gigabytes of memory even if you aren't running any other programs. For older hardware or those concerned about speed and performance, that may be too much to ask for. For others, the thought is that unused memory is wasted memory. The truth is that it has everything to do you your preference.

That's where these two final DE's come in. Both of them are famous for being extremely resource-light, and are the go-to choice for reviving old computers that would otherwise chug under the weight of a heavier desktop environment. XFCE and LXQT have both earned a reputation for using less than 1 Gigabyte of memory at any given time (sometimes using only 300 Megabytes, nearly a third of what KDE and GNOME require), leaving the rest of your computer's resources free for work and play.

The way they are able to use such little memory, however, is by stripping out a lot of the unnecessary components and fancy animations present in other DE's and instead opting for a more traditional (some may call it "old-school") look. 

However, don't be fooled by the sometimes dated look and feel of these desktops. Both of them can be customized to look exceedingly modern and clean with a little bit of effort. Furthermore, many of the distros that feature a XFCE or LXQT "flavor" often go to great lengths to make the pre-installed desktop look nice without any effort on your part, that way you can just jump right into using your computer.

#### XFCE
Graphical Toolkit: GTK
Distros that use XFCE by default: MX Linux
Distros that have XFCE flavors: [Xubuntu](https://xubuntu.org/){:target="_blank"} (XFCE + Ubuntu), OpenSUSE, Linux Mint, [Fedora XFCE Spin](https://fedoraproject.org/spins/xfce/){:target="_blank"}

XFCE has a dedicated following of long-time Linux users because for the most part is hasn't tried to re-invent itself into a brand new ultra-modern experience every couple of years. It's rock-solid, time tested, and has just enough customization options to satisfy even the pickiest users. For these reasons you will unusually find it at the top of some "best Linux DE" lists right up against GNOME and KDE despite the fact that, on the face of it, the unmodified version of XFCE looks quite dated. Thankfully, many of the distros that have an XFCE version have put in some time an effort to customize their XFCE version so it looks a little more modern.

Users who use XFCE have the option to choose between using an Apple-like dock or a Windows-like taskbar, and the option to add multiple bars around edges of the screen for displaying system information and custom widgets. All of the customization options are readily available from the built-in XFCE Settings application. XFCE also comes with a lot of cool features like a search utility that helps you sort through your system applications, and a colors utility that lets you change the color scheme on the fly. It's also possible to download new [color schemes and themes](https://www.xfce-look.org/){:target="_blank"} from the internet.

#### LXQT
Graphical Toolkit: Qt
Distros that use LXQT by default: None from the distro list in this guide, but they are out there!
Distros that have LXQT flavors: [Lubuntu](https://lubuntu.me/){:target="_blank"} (LXQT + Ubuntu), OpenSUSE, [Fedora LXQT Spin](https://fedoraproject.org/spins/lxqt/){:target="_blank"}

LXQT is the only other Qt based desktop environment on this list. There are others out there for you to use, but they're often a bit more esoteric. The reason behind was is because, as I've mentioned previously, the Qt toolkit is more of the "new kid on the block", and still has some catching up to do before it is used more widely. That said, LXQT is not exactly "new", in the broad sense. In fact, this environment has been around for quite some time. It used to be called LXDE until the developer who makes it began working with a Qt developer. That partnership led to all of LXDE being ported into the LXQT we have today.

Out of the two so-called "lightweight" DE's, LXQT's system requirements often beat out XFCE by a narrow margin, making LXQT the lighter of the two. In fact, LXQT is often the DE you will find installed on super-tiny embedded systems [like Raspberry Pi](https://www.raspberrypi.com/software/) OS (previously called Raspbian).
