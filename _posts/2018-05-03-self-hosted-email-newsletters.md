---
id: 492
title: Self-Hosted Email Newsletters
date: 2018-05-03T03:42:15+00:00
author: Abhas Abhinav
layout: post
guid: http://solitude.io/?p=492
permalink: /2018/05/self-hosted-email-newsletters/
image: /wp-content/uploads/2018/05/newsletter-header.png
subtitle: How do you self-host and send out a newsletter? Here is at least one
  elegant way to do it that will not force you to use a hosted-service or
  proprietary software. Covers the software and practices you can use for
  subscriber management, building content, sending mails, ensuring
  deliverability and analysis.
toc: true
categories:
  - free-software
  - self-hosting
---

![Newsletter Header](/wp-content/uploads/2018/05/newsletter-header.png) 

<p style="text-align: left;">Recently, at <a href="https://deeproot.in" 
target="_blank" rel="noopener">DeepRoot Linux</a>, we started a <a 
href="https://engage.deeproot.in/newsletter/01/index.html" 
target="_blank" rel="noopener">newsletter</a> that we send to our past 
and present customers, ie. a select group of people we have worked with 
and who have contributed to our business. Listed here are the choices 
that I made to design and send this newsletter and steps that you can 
follow to do so yourself.</p>
There are many ways of doing this right and of ensuring that an email 
you send will reach users' mailboxes. However, I wanted to ensure that 
we don't use a hosted service and that every component of the newsletter 
delivery process is setup using Free Software and is controlled by us. 
This an excellent way to demonstrate that self-hosted services are not 
just possible, but also preferrable. And that we shouldn't choose a 
hosted service by default.

<!--more-->
## The "email newsletter" problem

Anyone faced with the <em>problem</em> of sending out an email 
newsletter is faced with the following challenges:

### A: Subscriber management

Any email newsletter activity starts with this import decision of whom 
to address the emails to. Think about the following questions:
 
  * How and where does one store the list of recipients?
    
  * What attributes does one store for each subscriber?

  * How does one allow recipients of the email list to unsubscribe 
    themselves?

  * How does one use a subscriber's attribute to limit who to send 
    emails to?

### B: Building content

Once the audience has been identified, the next major decision is, of 
course, the content of the emails. We need to ask ourselves the 
following questions while building content:

  * Should the email content be formatted as HTML or plain text? Or 
    both?

  * If HTML is used, should the images be linked to the email from a 
    remote server? Or should they be attached?

  * What should be the ideal size of the mailer?

  * Should we use a visual tool to create the email content and layout? 
    Or should we build it using plain HTML?

  * How do we test what the content will look like on various email 
    services, mail clients and devices? How do we ensure that the email 
    is responsive?

All of these are very important questions to answer. Unless the content 
is easy to read and follow and looks good and is clear, it might not 
create the intended outcome.

### C: Send emails &amp; Ensuring Deliverability

The next big question is how to send the emails out:

  * Should we use our regular mail server? Or a separate email service?

  * If we use our regular mail server and the newsletter / mailer volume 
    is high, will it affect the speed and deliverability of regular 
    emails? What if the regular mail server limits how many emails we 
    can send out in a day?

  * How do we predict that, once sent out, the emails will reach the 
    users' Inbox?

  * How much are we willing to spend to ensure the deliverability of 
    these emails?

### D: Tracking and Analytics

Is it possible to know when (or if) people see your emails? Or click the 
links inside it? Getting details of whether emails were delivered (or 
bounced), how many recipients opened them and which links (if any) they 
clicked on is important to guage the success of the email campaign.

## How do people usually solve this "problem"?

The most common and popular method of solving the <em>problems</em> 
above is use a hosted email service to send out the newsletter. A hosted 
service solves all the problems listed above without bothering you with 
how they are solved. Choosing a hosted service, is hence, a very <em>low 
hanging fruit</em> which helps one to get started quickly. Specifically, 
a hosted service provides the following:

  * A way to manage the recipient subscriber database

  * A method to embed a subscription box on your blog or webpage

  * Free (and paid) email templates that you can use to write your 
    content

  * Email delivery infrastructure that does its best to ensure delivery 
    of emails to recipients

  * Extensive reporting and analytics features that enable you to guage 
    the reach and success of your email campaign

## Why self-hosting?

As with using any hosted service, there are, however, some downsides of 
hosted services as well:

  * You need to share your email database with a third-party

  * You don't have control over your own email subscriber database

  * The service (<em>most probably</em>) uses proprietary software to 
    help you compose and deliver emails to the users' mailboxes

  * The email bounces go to the service provider (and not to your email 
    address)

  * Since it is a hosted (and paid) service, there is an automatic 
    lock-in - since you use their software and infrastructure to build 
    and store your email subscriber databse, you have to keep using 
    their service unless you are ready to <em>export</em> it out for use 
    elsewhere.

  * The open and click tracking information also goes to the hosted 
    service provider and usually such reports are difficult <em>(even 
    impossible)</em> to export when you shift service providers.

From my perspective, the single thing that pricks the most is the fact 
that I would be forced to use proprietary software to handle all aspects 
of the workflow. Having built mail servers for more than 18 years now, 
its somewhat of an embarassment to use a hosted service to send out our 
company's email newsletter!

Hence, a self-hosted newsletter delivery process is what I chose. Making 
this choice also enables me to write about it and help others to adopt a 
similar workflow as well.

## The "solution" and the process

Here are the components that I deployed to build and send the email 
newsletter.

### A mail server that does its best to deliver emails

Of course, we already had a mail server. And it worked real well. For a 
few years now, we have had to use one of our colocated cloud servers to 
relay our emails out since most of the IP addresses that broadband ISPs 
give us don't have <em>good reputations</em>. Plus, just having a nice, 
clean and well-behaved IP address is not enough these days to ensure 
that your email will reach its recipient's Inbox. One needs to do a 
variety of exercises to encourage large email providers to accept the 
email. These include:

  * Having a proper reverse-DNS (PTR) record for the outgoing IP of the 
    mail server. (And if the reverse-DNS record matches the 
    forward-lookup, nothing like it!)
  
  * Publishing SPF (Sender Policy Framework) records via DNS that 
    declare the conclusive and exhaustive list of IPs and sources from 
    where you intend to send emails
  
  * Digitally signing[^dkim] emails using a technique called DKIM 
    (DomainKeys Identified Mail). 
 
  [^dkim]:
    When your outgoing mail server signs an email 
    this way, it computes a hash using specific parts of the email body + 
    headers and then signs the hash using the private key corresponding to 
    the sending domain.
    
    The recipient's server extracts this information from the headers, 
    queries the domain's public key as published via DNS and then tries 
    to cryptographically verify if the two match. Apart from being used 
    to calculate the sender's reputation, this method is also used to 
    confirm that the message has not been modified in transit.

While not exhaustive and conclusive in themselves, these three 
techniques build up the reputation of the IP and domain sending emails 
and that, over time, improves the delivery of emails.

![SPF, DKIM and DMARC records for deeproot.in](/wp-content/uploads/2018/05/newsletter-dns-records.png)

We use a combination of qmail and Haraka to send out, receive and 
deliver emails. The <a href="https://haraka.github.io/" target="_blank" 
rel="noopener">Haraka SMTP</a> server takes care of adding DKIM 
signatures to outgoing emails apart from scanning incoming emails for 
spam and virus. Our instance of Haraka is hosted on a VM at the Digital 
Ocean data center in Bangalore.

### A subscriber management system

The subscriber management system is the user-interface for all 
newsletter-related activities. We use <a href="http://mailtrain.org" 
target="_blank" rel="noopener">Mailtrain</a> to manage the email 
recipient database and send out the mailers. We import our email 
contacts via CSV files into separate "email lists" in Mailtrain.

Using Mailtrain required us to do two things:

  * Setup and secure a server on which Mailtrain would be hosted, and

  * Configure and run the Mailtrain service on this server

This is an inevitable part of self-hosting. Making the choice to 
self-host also implies putting in effort to setup, configure and 
maintain the corresponding services (Haraka and Mailtrain, in our case 
here). I don't consider this an overhead - Once you setup the services 
properly, they will just run.

![Mailtrain's Email List feature](/wp-content/uploads/2018/05/newsletter-email-list.png)

Mailtrain also has many advanced features wherein it can handle bounces, 
filter email lists for non-existant email IDs (via domain verification), 
send out email campaigns based on certain triggers (like a blog post 
being published) and much more.

### An email template and Content

Another thing that Mailtrain excels at is the ability to build email 
templates with ease. It includes a three different visual HTML builders: 
Mosaico, GrapeJS and Summernote. Apart from these, you can also upload 
your custom HTML code or text.

![Editing a template using Mosaico](/wp-content/uploads/2018/05/newsletter-mosaico-template.png)

I started to use the visual editors to build the email template. Mosaico 
is good and has a lot of components and blocks that be inserted. 
However, after much experimentation with all the email template 
builders, I decided to instead build the email template using simple 
HTML.

To do this, I used a <a href="https://github.com/InterNations/antwort/" 
target="_blank" rel="noopener">HTML template</a> that was licensed under 
a Free Software license. This template looked good and had clean HTML 
that I was able to modify easily. The template also included default CSS 
code to provide a consistent and responsive layout across devices and 
mail clients.

The newsletter included a text part as well. The intention was that 
those who choose to read the text version of emails or use a text-only 
mail client should still be able to read and appreciate the content of 
the newsletter. Once the HTML template was designed and the content was 
ready, I opened the HTML file with <code>lynx</code> (a command-line 
browser) and saved the output as a text file. I then cleaned this up 
added it in the text part of Mailtrain's template.

![The HTML template (below) with the corresponding text format (above)](/wp-content/uploads/2018/05/newsletter-html-and-text.png)

### Handling Images

The most common way of linking images from an email newsletter is to 
load them off a remote server. The advantage of doing this is that it 
lowers the size of an email while still enabling it to look good. 
However, it imposes a further constraint on the recipeint, namely: the 
recipient's mail client should be configured to load images from the 
Internet.

As a protection against spam emails and email tracking, most mail 
clients and service providers don't look images from a remote server by 
default. They will generally show you a warning to this effect - so that 
you are aware of the fact that the mail client noticed that the email 
had images linked from a remote server, and as per the mail client's 
security policy it was not displaying the image.

So now, the problem is this: how do you make your email newsletter look 
good without loading images off a remote server? The answer is: attach 
the images! This can greatly increase the size of an email and hence, 
multiple precautions need to be taken to keep the sizes low.

![The base64-encoded image embedded within HTML](/wp-content/uploads/2018/05/newsletter-base64-image.png)

The only image I wanted to include and display in the newsletter was our 
logo. And so I came up with a hack: Instead of attaching the image, I 
encoded it using the base64 algorithm and embedded this base64-encoded 
file into the HTML source itself. This technique ensured that the logo 
would show up even in cases where a mail client was not configured to 
load images off the Internet.

### Sending Emails

Finally, the emails were sent out using the "Campaigns" feature of 
Mailtrain. Mailtrain has a feature by which it can embed custom, 
personalised text and URLs into each email it sends out. These can be 
used to greet a recipient personally and include a custom and direct 
unsubscribe link. When you create a campaign, you specify the "email 
list" and "email template". Running the campaign just sends the email 
template (after variable substitution) to the email recipients 
one-by-one.

Mailtrain tries to throttle its email sending. It tries to make sure 
that it does not send too many emails to too many people in a very short 
period of time. If it did so, it might look like an act of a spammer!

### Tracking opens and clicks

Lastly, Mailtrain tracks email opens and clicks using a simple technique:

  * Email email is embedded with a unique 1-pixel image. Whenever 
    someone who reads the email loads this image, an "open" is 
    recorded.  (Of course, for this to work, the recipient's mail client 
    has to support loading images off the Internet.)

  * Each link in the email is uniquely encoded to first go to Mailtrain 
    and then get redirected to the actual link.

This way, it is possible to know how many people opened your email and 
which links they clicked on.

![Some details of the newsletter's performance](/wp-content/uploads/2018/05/newsletter-tracking.png)

## Summary

As you can see, it is not difficult to setup a toolchain and process to 
send out email newsletters. It is also possible to do so without using 
proprietary software and hosted services.

