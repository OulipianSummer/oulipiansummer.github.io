---
layout: post
title: Rich Results & Structured Data
date: '2023-08-19 20:42:05 +0000'
categories: [Portfolio]
tags: [seo, structured data, drupal, backend]
---

## Bison Disc & Dental Power

During my work with Bitcookie, we were approached by two different clients who sought to drive higher conversions using Search Engine Optimization (SEO). One was an e-commerce site, and the other was a professional staffing agency.

Usually, SEO work starts with a thorough site audit where we're looking for quick and easy opportunities to boost site performance and user experience. Here, things like caching, image compression, and resource delivery are some of the best places to start enhancing a site's rankings.

However, once that work is done and the site is running smoothly, it can be hard to know what to do next. This is when most people log into Google Analytics, start a pay-per-click ad, and call it a day when, instead, it is time to roll up their sleeves and dig into nitty-gritty projects like structured data. This kind of project used to be a pain and usually involved intentionally creating a gray-area between a site's business logic and display logic. However, using a more modular approach to structured data can make it as easy to implement as flicking a switch.

Talking Points

- Using structured data is a low-cost way of enhancing search rankings without placing ads
- Search engines have started to adopt more modern ways of injecting this data
- This method is scalable and flexible, depending on the type of data you want to display

 ---

## What Are Rich Results & Structured Data?

 Rich results and structured data are both important components of SEO (Search Engine Optimization), as they help search engines understand the content of a webpage and provide more informative and visually appealing search results to users.

Structured data is a specific format of coding that web developers can use to mark up the content on their webpage in a way that is easily understood by search engines. It allows website owners to provide additional information about their content, such as the author, the publishing date, or the product's price and availability. By adding structured data to a webpage, search engines can more accurately interpret the content and display it in more informative and visually appealing ways, such as with rich results.

Rich results are the enhanced search results that feature additional visual elements, such as images, ratings, reviews, and other interactive features, that are generated from the structured data. These results are designed to provide users with more useful and engaging information about a search query and help them make informed decisions.

## E-Commerce

One of our clients requested this work to attract more customers to their e-commerce site, specifically to their product pages. The goal was to make it easy for shoppers to quickly see the price, availability, the number of reviews, and the average review rating of a particular product.

Compared to their competitors, utilizing the additional visual features that search engines offer to pages using structured data would help them stand out.

![A rich-results enhanced page result on Google](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/bison_product_results.webp)
*A rich-results enhanced page result on Google*

## Job Listings

Another client wanted to take advantage of a different feature of Google called "Jobs." This client was a professional staffing agency, and their business relied on linking potential employees with professional job listings posted on their website. Hence, they needed a way to help their listings appear in the same format as listings from websites such as Indeed and LinkedIn.

The general idea was for a potential candidate to be able to search something like "jobs near Miami" and see a stylized list of current job listings compiled by Google using the structured data from that listing.

![Job listings enhanced with structured data will appear in a special view on Google's job results](https://raw.githubusercontent.com/OulipianSummer/oulipiansummer.github.io/main/assets/img/portoflio/dental_power_job_listing.webp)
*Job listings enhanced with structured data will appear in a special view on Google's job results*

## Formatting Issues

Automatically generating structured data and inserting it into a web page in such a way that both search engines and people can understand is not without its challenges. Typically, structured data is integrated into each web page using a format known as microdata.

This format gained popularity through Google and Google+, but it has since become less favored as it requires developers to embed metadata and Schema.org definitions directly into the HTML elements that wrap their content. This can have several negative consequences such as poor site performance, bloated DOM size, unpredictable page design, and poor scalability. Therefore, using microdata or any similar method was something I wanted to avoid to keep maintenance costs low.

## The Requirements

The e-commerce website needed a way for admins to manually manage product listing data using a graphical user interface in the backend. This would allow them to update search result listings whenever the upstream price of their products and materials changed, which happened frequently.

Likewise, the job listing company aimed to make their listings available as soon as the employer finalized their listing details and were ready to accept applications. As this company manages hundreds of listings simultaneously, the day-to-day operation of this feature had to work with minimal supervision or input from admins after publishing the listing.

## The Solution

In the end, I decided to create a system that embedded JSON data into the head tag of each page. This method is a more modern approach to manage structured data and is widely supported among top search engines. Moreover, this approach enabled us to preserve the proper separation of concerns and keep the application logic that powered this feature out of our HTML templates.

However, each website needed some customization to meet its individual requirements. For instance, the e-commerce site needed some additional backend fields to manage their products. This allowed admins to manually update the structured data of product prices when their material costs changed. Additionally, I extended the site's current product review system to calculate the number of reviews and the average rating for each product.

The job listing site was a little more challenging. Here, I soon discovered that there was a high degree of variation among job listings. Some included specific hourly pay rates, while others offered a promise of competitive wages with no hard numbers. Unfortunately, Google only accepts pay information that includes a numeric pay rate, so I needed to create a sub-system that could recognize when a job listing didn't have enough pay rate data and act accordingly.

During testing, I also noticed that the job listing data structure wasn't making the best use of what Google's rich results had to offer. For instance, I came across certain data types used by competitors in their listings that we couldn't provide in our current data model.

After finishing the initial version of this feature, I suggested that we should expand and improve the job listing data model to enhance the job listings and stay competitive. This suggestion coincided with a round of refactoring related to the job listing workflow, so we were able to integrate this data enhancement work into the existing project deliverables.
