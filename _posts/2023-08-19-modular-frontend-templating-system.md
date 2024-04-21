---
layout: post
title: Modular Frontend Templating System
date: '2023-08-19 20:27:41 +0000'
categories: [Portfolio]
tags: [frontend, drupal, php, webserver management]
---

## Blank Media Printing

<p><i class="fas fa-link"></i> Link: <a target="_blank" href="https://www.blankmediaprinting.com/">https://www.blankmediaprinting.com/</a></p>

When I worked with Bitcookie, Blank Media Printing approached us to help make the public-facing-pages on their website load faster. As you might expect, this is a very common request.

In our day-to-day work as web developers, this typically meant that we would need to tune the server: we would probably just optimize some page queries, update a template or two, compress some images, pare down the number of serial requests on each page, and then do some testing.

However, once we started our work, we found that the vast majority of their page content, including custom page templates and scripts, were stored in old-school WYSIWYG text editors. Unfortunately, this meant that they were out of the reach of any server code that we could use to optimize their pages, which rendered our toolkit of tried-and-true methods all but useless.

In this post, I'll detail how I brought a website up to the more modern standards of modular content management.
Talking Points

- Breaking pages into bite-sized chunks makes it easier optimize each section
- Using WYSIWYG editors is great for most use cases, but using it to store and manage complex markup and media is not one of them
- Using an in-house solution is often the best choice for platforms that are no longer receiving updates or support

---

## WYSIWYG: A Background

What You See Is What You Get (WYSIWYG, pronounced "wizzy-wig") text editors used to be all the rage back in the golden age of WordPress. Imagine: you could let a content editor use a web interface that generated fully operational HTML, and it was as easy to use as Microsoft Word. You could build lists and tables, post multimedia directly to your website, drag and drop different sections from one part of the page to another, and even build complicated HTML templates right in your browser window without touching any code. How convenient can you get?

Fast forward to today, and WYSIWYG editors haven't quite lived up to all of the dot-com bubble hype. Don't get me wrong, they work great in the right context—I'm even using one right now to write this post—but I think it's fair to say we all went a little overboard.

When you tried editing the content on websites back in those halcyon days, it wasn't uncommon to find the entire body text of the webpage stuffed into a WYSIWYG: complicated custom HTML templates, half-baked JavaScript, single-use CSS styles, and more, all living on top of each other in a jumbled mess. More to the point, there were practically no safeguards that kept an unwitting content editor from uploading a print-quality image to the front page and crashing the site.

In the age of websites that build and tune page content for you, relegating all of your HTML management to a WYSIWYG makes everything more difficult. These days, developers and content editors still use WYSIWYG editors, but the scopes in which they get implemented are more limited, if not only to prevent some of the more severe outcomes. Instead of managing an entire page, WYSIWYG editors might manage a part of that page instead—say, a single region or paragraph.

## The Challenges

What made this request interesting was the fact that the vast majority of our client's pages were built using WYSIWYG editors in a very old content management system. Unfortunately, this meant that most of our tried and true server-tuning techniques were completely useless for one simple reason: all of the WYSIWYG editors on their site were out of reach to the server that hosted them, hence, we couldn't use any server code to optimize their content.

On the other hand, using WYSIWYG editors was perfect for the admins and content editors because it allowed them to make updates to the entire page on the fly. Ideally, we needed to preserve this workflow as much as possible so we didn't disrupt their experience.

Traditionally, we would have turned to some kind of community-powered plugin that would allow us to manage page content on a more granular level, but because our client's site was powered using an older piece of software, Drupal 6, no such plugin existed—yet.

## The Solution: Nodes

To solve this, we had to rethink our entire approach to content management. This isn't entirely unlike what happened in days past when it became clear that WYSIWYG editors were getting too bloated. Our overall goal was to create some kind of new subsystem that could restructure the existing page content into discreet bundles that had the same look and feel.

For an example of what I'm talking about in context, on any given page of our client's site you might find a region that advertises some details about a product. On other pages, you might find that exact same region with the exact same styling and behavior, the only difference being that they each had their own, page-specific content.

![A side-by-side compaison of two content regions A side-by-side comparison of the same styled region with different content.](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/bmp_template_comp.webp)
*A side-by-side compaison of two content regions A side-by-side comparison of the same region with different content.*

Drupal CMS actually has a community module that handles work like this called Paragraphs, but we couldn't use it because our client's version of Drupal was too old— but that didn't mean we couldn't use other aspects of this software to achieve the same goal.

What I ended up developing was a modular layout engine that made use of a core feature of Drupal's content management system called "nodes."

To Drupal, a "node" is an abstract object that can be rendered as a webpage. Admins can create different collections of nodes called "bundles." Bundles are used to track different types of content like articles, blogs, orders, products, and just plain-old pages. Each bundle acts like a generic definition for that object and allows admins to define specific purpose-driven fields of content. For example, a blog might have a field for uploading a header image, whereas a product might have a price field. To Drupal, both products and blogs are still nodes, in the generic sense, but they each belong to different bundles.

The huge advantage that the node system offered was the fact that we could programmatically manage and optimize each object with server code— things like titles, body text, images, lists, and even formatted markup fields could all be manipulated and edited before they were rendered using a template.

## Putting It Into Practice

Using the example image above, this new system effectively enabled us to define a new node bundle called a "photo region." This "photo region" could then be configured to collect data for a header, a section of body text, and a photo.

If we wanted even more control over this region, we could define a field that places the photo on the left or right hand side. Importantly, we could also tell the system to resize the photo to a specific web-optimized size. Whenever an admin wanted to make a new "photo region" to display some content on a page they were building, they could just create a new instance of this region and plug their content into specialized, purpose-driven fields. All they would need to do is create a title in a text field, pick an image using a file uploader widget, and write some body text in a markup field.

Although this system solved a lot of content management issues for admins, it didn't quite solve the issue of how to display these new layout regions once they were created. Like I said, to Drupal, a node is an object that can be rendered as its own page— not a section of another page.

To solve this problem, I had to make use a special field known as an entity reference field. This is a special type of field that you can add to any node. Once added, it can be used it to "pull in" other nodes and display their content. This effectively creates a parent-child relationship between a set of nodes. In practice, this meant that we could treat any publicly visible node (like the homepage) as a parent, and any layout node (like a photo region) as a child.

This process did affect the way admins edited content, but only slightly. Instead of adding a ton of new content in a WYSIWYG field, admins needed to visit the page they wanted to edit, reference the new layout object that they just built using then entity reference field, drag and drop it in the desired order, and save the page. After that, the homepage would just render the template and inject all of the content that the admin placed in the layout item.

There were a few other bits and pieces that had to be done in order to make this work without a hitch. One required task was that each node bundle needed its own handwritten template. This enabled our development team to have total control over how the content got rendered. Plus, it helped us make use of some best practices for the sake of SEO and page speed, especially when it came to cropping, resizing, and compressing big images.

I also had to create some custom code that made it so layout item nodes weren't accessible to the general public. Like I said, Drupal effectively treats each custom layout item as its own page when in truth it was just a section of a page. I accomplished this by using the Drupal's user authentication system: admins and content editors could see layout item pages, and random visitors or shoppers couldn't.

Lastly, I designed a backend report that allowed admins to see what layout items were in use on what pages at a glance. That way, they could see the relationship between a parent page and its layout children. This made finding, editing, and updating these layout items a little more natural for admins who wanted to update a specific section of a specific page.

## In Review

Nothing much changed on the frontend: this was by design. We didn't want to disrupt any of the existing content, just modify how it got processed, stored, and rendered. The only big change that impacted day-to-day visitors was the way images were delivered. Using this new system, we were able to have extremely granular control over every image on the frontend. We could compress, resize, and crop images on the fly with just a few lines of code, meaning we could be sure we were always delivering web-optimized images to the end user.

Compared to the old WYSIWYG editors our clients had been using to manage all of their page content, I was able to hand even more control over to their content editors without actually changing any of the page content. In fact, after I migrated all of the WYSIWYG content into our modular layout system, we were able to observe performance enhancements thanks to the reduction in page size: as much as about 3-4 MB in some places.

In practice, it is very difficult to estimate just how "fast" or"slow" a page is, thanks to the variability in the devices and internet speeds people are using to visit a site. However, we could be certain that the smaller page payloads across the entire site ensured that we adhering to a mobile-first design pattern. Furthermore, we had the piece of mind that the resultant page design was more stable, easier to manage, and lighter than the legacy version.
