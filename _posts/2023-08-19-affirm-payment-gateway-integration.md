---
layout: post
title: Affirm Payment Gateway Integration
date: '2023-08-19 20:37:18 +0000'
categories: [Portfolio]
tags: [backend, drupal, payment gateway, api integration, affirm]
---

## Bison Disc

<p><i class="fas fa-link"></i> Link: <a target="_blank" href="https://www.bisondisc.com/">https://www.bisondisc.com/</a></p>

Maintaining legacy projects strikes a delicate balance between the old and the new. In many regards, upgrading a working stack of software so that it has all of the newest bells and whistles is an expensive, time consuming, and disruptive change. In most cases, the old adage of "if it ain't broke, don't fix it" still applies.

But what are you supposed to do when your software stack can't support a plugin that your client specifically requested? Or what about the inverse situation: you find a plugin that might work, but it isn't supported anymore? It could be a perfect fit or it could be hours of patching, and tweaking to revive the software into a working state.

This is the situation I found myself in when Bison Disc, one of the clients I worked with during my time at Bitcookie, asked if we could integrate an Affirm payment gateway into their e-commerce site. Affirm has a well documented API, a JavaScript SDK, and a few official plugins. Unfortunately, due to the age of Bison Disc's software stack, Affirm didn't have any official plugins that would work for their site. I did find a community plugin, but as of last check, the creators had abandoned it before it even got out of beta--over 4 years ago. All we had was an API and a dream.

In this case study, I cover the steps I took to breathe life back into an outdated plugin.

Talking Points

- Old software never really dies as long as you take the time to learn how it works
- The Affirm SDK is one of the most comprehensive frontend solutions in a payment gateway
- Take time to review vendor code, it might just save you some time in your own projects!

---

## The Affirm API

 Having worked with a few different payment gateway vendors at this point, I can proudly say that Affirm is one of my favorites. Their entire integration process revolves around a single JavaScript SDK. Just add it to your site, change a little bit of markup, write a few JavaScript event handlers to bind the two together, and you can start taking orders-- on the frontend, at least.

Affirm's SDK takes care of the hard work presenting pre-designed UI elements to the user, helping them log into their Affirm account without ever leaving your site, and it even handles the payment gateway webhooks for you, so long as you formatted your order data correctly.

This SDK also takes care of some of the scarier legal baggage that comes with loans and deferred payment systems. It does this by making sure users always have access to detailed information about their borrowing power directly from your site. It even renders a handy UI element that describes how much a product would cost in terms of monthly payments.

At the end of the process, they even have someone review your work to make sure you did it correctly and met all of the integration criteria. Having the peace of mind that they won't let you get sued for missing a tiny detail was a pleasant addition to the experience.

Although the SDK is a fine solution for the frontend, it doesn't solve any of the backend concerns. How do you mark an order while Affirm is processing the payment? When they're done, how will you know? If a customer wants a return, do they do that through Affirm or through your site? How do you store and synchronize all of this data? This is where having a plugin designed just for the software your site uses is key, and it was this element that was somewhat out of our reach.

## The Challenges

### Reviving Old Software

There were no officially supported plugins that would work with our client's site, just a beta community plugin that hadn't seen the light of day for over 4 years. Even if we wanted to make a new plugin from scratch, we still wouldn't be able to count on any support or upstream updates in the foreseeable future.

Knowing nothing else, it looked like the best solution would have been to just make a new plugin from scratch. However, this would have required building and debugging a handful of webhooks to keep the two services in sync. For example, whenever Affirm approved a shopper to take out a loan for their purchase, they would need to send a package of data to Bison Disc's site saying that the payment had gone through.

Building and debugging webhooks of this nature can be a tricky and time consuming job, and it had the potential to eat up a lot of time if we weren't careful.

### Long Term Maintenance

Assuming that we could even build a working package, we would still have to stay alert for upstream changes to Affirm's API. Most 3rd party software vendors are good about supporting their old APIs in perpetuity, but it isn't always a guarantee.

If anything, this consideration made it all the more important to have a wide degree of control and understanding over whatever form our plugin took. If we had the luxury of using an official plugin that worked out of the box, we wouldn't really know what to do if Affirm introduced a breaking change to their service.

### Integration With The Existing Software

The payment gateways already in-use on the site each had a very predictable workflow. They would handle updating the order status whenever a customer completed checkout, they provided backend reports and logging, and they each offered a suite of settings and options that admins could use to customize its behavior for their specific needs.

Regardless of how we decided to implement an Affirm plugin, these features were critical to ensure a uniform experience and ease of management.

## The Solution

All of the challenges that stood before us posed an interesting question: if we weren't going to get any of the perks of officially supported software anyway, why not just fork off the dead community version and make our own in-house plugin that suited our needs? Even if it was out of date, maybe we could repair the package to the point where it worked.

There was only one potential trade off: all of this proposed repair work came at the cost of time and energy. In short, I had to be sure that this solution would work, or risk throwing away too much time on a pipe dream.

To make sure our fears weren't unfounded, I took some time to read up on how Bison Disc's existing payment gateways worked. Then I took what I learned and compared it to the outdated Affirm plugin. All in all, I discovered the Affirm plugin was a good candidate for refactoring. It handled most of the work that we needed, and the parts that it didn't do were easy enough to implement that we could get it built well within the proposed budget.

Part of what tipped me off that this old Affirm plugin might fit our needs was the fact that the creators had based it off of the PayPal payment gateway: a plugin our team was already familiar with and used regularly. Given the fact that our team already had a strong background in that family of software, there was a strong body of evidence that getting up-to-speed with Affirm would be quick and easy.

In the end, the plugin I created was a fork of the community version with a handful of customizations that integrated it seamlessly into our more modern stack. This work involved coding up a few system hooks that handled updating order statuses, creating a few settings panels, and updating some deprecated function calls. I also discovered one or two database queries that weren't quite as efficient as they could be for stores with lots of orders, so I took the time to optimize them as a best practice.

Once the vendor-required inspection got the green light, we were able to deploy the completed feature. Not long after, Bison Disc started receiving some of its first purchases using Affirm.
