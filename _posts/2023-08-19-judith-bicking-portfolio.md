---
layout: post
title: Judith Bicking Portfolio
date: '2023-08-19 19:33:10 +0000'
categories: [Portfolio]
tags: [python, django, wagtail, webapp, frontend, backend]
---

## Judith Bicking: Bicking Graphics

<p><i class="fas fa-link"></i> Link: <a target="_blank" href="https://bicking.com">https://bicking.com</a></p>

Judith Bicking, a local illustrator in Asheville, North Carolina, reached out to me looking for a portfolio website that helped her organize and display her artwork. In her work as an illustrator, she has used dozens of third-party portfolio hosting services, but none of them quite lived up to her expectations. They were difficult to maintain, often charged a fee to host her art, didn't always have a full-featured or intuitive image gallery, and they didn't always help generate client leads. She also paid for a hosted domain that she wasn't using, and the semi-monthly charges were beginning to add up.

At the end of the day, Judith was looking for a simple, cost effective portfolio that allowed visitors to see her work in a beautiful gallery, and permitted clients contact her when she was accepting commissions.

Talking Points

- Python-powered portfolio that uses masonry layout and Bootstrap 5
- Built using CodeRedCMS and Wagtail for minimal bloat and low computational overhead
- Entire website is optimized for SEO, performance, and lead generation

---

## Wagtail & CodeRedCMS

When Judith started describing what she wanted out of her website, I realized her request would benefit from a very streamlined approach. She simply wanted a place where she could receive some client leads, host her pictures, and update all of it herself. In my work I usually build projects with Drupal: a robust, full-featured enterprise-ready content management system built in PHP. Unfortunately, due to the fact that Drupal is so complicated, I realized it wasn't a good fit for Judith's needs, especially if she wanted to upload new images and maintain the site herself.

On the other hand, I thought that Wagtail CMS might be a good fit for her project. Wagtail is a very simple content management system written in Python and built on top of the ever-popular Django web framework. It was fast, easy to maintain, had plenty of support, and gave us a lot of flexibility in terms of future expansions. If, for example, Judith ever wanted to expand her portfolio to act as an e-commerce site for her art, there were plenty of community packages we could install to make that happen.

I've always felt that Django alone was just a little too bare-bones for building and maintaining websites on a short timeline, so I wanted to use Wagtail because it provided some more pre-packaged features that make it easy to get great websites into clients' hands.

In the end, I chose to build the project using a Wagtail distribution called CodeRedCMS. This was because CodeRedCMS was designed to build high-quality marketing websites extremely quickly without having to spend a ton of time building and debugging complicated Django models.

## Shared Hosting

We decided to launch this site on shared hosting in order to reduce some of Judith's monthly overhead. This ended up being a really great solution for us, despite the fact we were using a non PHP-powered stack. This is in thanks to the fact that shared hosting has come a long way from even just 5 years ago.

Hosting providers used to limit developers to a bare-bones set of scripts and packages that they could use on their hosted server. In most cases, you were stuck with the software you were given--almost all of it designed to run WordPress and practically nothing else. Add to that the meager hardware resources at your disposal, and it made for an uncomfortable production environment.

Many hosting services have started to offer more production-ready shared hosting environments for simple websites that still need some special features, but this isn't the case everywhere. It certainly wasn't the case with Judith's existing hosting provider, which was charging her a huge monthly fee for little more than an FTP server.

Today, there are plenty of shared hosts that will let you compile your own binaries, upgrade and customize the software on your shared machine, and even run websites that aren't powered by PHP and WordPress.

In Judith's case, using a full-featured shared host meant she had the ability to cut her existing web hosting budget in half and still get a highly performant website out of it. The fact that we had the ability to compile our own binaries also meant that I could make sure her site had access to the latest version of Python. If she ever needed to upgrade in the future, her chosen hosting provider could hook her up with a VPS to handle the extra traffic.

## A Custom Gallery

From the start, Judith wanted her gallery to display each image in its native, uncropped aspect ratio. I was concerned about creating a layout that was able to make this appear effortless and elegant, so I started looking around for some frontend libraries to help me out. In the end, I used [masonry](https://masonry.desandro.com/), a fantastic JavaScript library that places each element into a beautiful free-flowing grid regardless of any difference in their intrinsic height. Masonry made it possible to re-arrange the gallery layout on the fly, and provided an extra layer of visual appeal for desktop and tablet-based visitors.

Another one of Judith's core requirements was that her gallery pages should be able to host an entire collection of full-resolution images, sometimes as many as 20 or 30 at a time. The challenge here was making it so these pages loaded quickly and worked well on mobile systems.

![A screenshot of one of the custom galleries on Judith's website built using masonry.](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/jbicking-gallery.webp)
*A screenshot of one of the custom galleries on Judith's website built using masonry.*

Thankfully, Wagtail comes with a nice image rendition system, meaning Judith could upload a full resolution JPEG in the backend and Wagtail would create a web-optimized and super-small webp thumbnail for display in the gallery. Whenever a visitor clicks on an image, they can see a full-resolution version of that image in a pop-up modal.

![A modal showing some of Judith's workWhat a modal popup looks like when a user clicks on it. The modal features navigation links, a caption, and a close button.](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/jbicking-modal.webp)
*A modal showing some of Judith's workWhat a modal popup looks like when a user clicks on it. The modal features navigation links, a caption, and a close button.*

CodeRedCMS comes packaged with Bootstrap 5, meaning I had access to its powerful UI components. I used the Bootstrap modal system to handle the image display when it was in full-resolution mode. I created some customizations for the modal system that allowed users to navigate with their keyboard, and also visit a page where they could read about the image in more detail. Once on this detail page, visitors could toggle to view the image with a dark background, or hide the details panel so they could just focus on the art.

![A detail page about a single piece of art.](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/jbicking-detail-white_0.webp)
*A detail page about a single piece of art.*

![A detail page featuring a piece of art on a dark backgroundWhat a detail page looks like with dark mode toggled.](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/jbicking-detail-dark.webp)
*A detail page featuring a piece of art on a dark backgroundWhat a detail page looks like with dark mode toggled.*

## Client Testimonials

Judith had a number of clients that had given her good reviews in the past, so we decided to make use of those reviews in a special section on the front page with a simple slider element made using [TinySlider](https://ganlanyuan.github.io/tiny-slider/).

## Commissions Indicator

Judith fields a lot of custom requests for artwork and graphic design to run her business, but at times she would get swamped with too many people looking to start a project with her. To alleviate some of this strain, I designed a simple content block that would change colors and display different messages depending on whether or not a box was checked in the backend. We placed this region on the contact page so potential clients could check to see whether or not she was currently accepting new commissions before reaching out.

![The artist is currently in. A custom content region is green whenever Judith is accepting new jobs.](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/jbicking-artist-in.webp)
*A custom content region is green whenever Judith is accepting new jobs.*

![This same region turns red when she needs to slow down her new projects.](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/jbicking-artist-out.webp)
*This same region turns red when she needs to slow down her new projects.*
