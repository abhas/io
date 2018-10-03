---
id: 471
title: Public DNS servers and Privacy
date: 2018-04-17T05:00:05+00:00
author: Abhas Abhinav
layout: post
guid: http://solitude.io/?p=471
permalink: /2018/04/public-dns-servers-and-privacy/
image: /wp-content/uploads/2018/04/dns-tcpdump.png
subtitle: What are the privacy issues related to using public DNS servers? What
  steps can you take to have more privacy with regards to your Internet access?
toc: true
categories:
  - free-software
  - privacy
---

![tcpdump](/wp-content/uploads/2018/04/dns-tcpdump.png)

Recently, CloudFare launched a <a href="https://1.1.1.1/">public DNS
service</a> that they position as a "privacy-first Consumer DNS
service". And that got me thinking about how much information and data we
are leaking through DNS queries and what that does to our privacy.

## What are DNS resolvers?

DNS resolvers are network services that convert domain names into IP addresses.
When you visit a website or send an email, all these applications need to map
the name you use to its corresponding IP address. The operating system hands
over this job to a DNS resolver which in turn uses other DNS servers to help do
this mapping as quickly as possible.

In most home network settings, the DNS resolver is usually provided by the
Internet Service Provider. Your phone or laptop or any other network device at
home will use this  ISP DNS resolver to map names to IP addresses. Most
organisational networks have local resolvers that then contact ISP or public
DNS servers on the Internet.

In all cases, another function that DNS resolvers perform is that of caching
the DNS name to IP mapping. By doing this, it can respond to DNS queries faster
the next time the same resolution is requested by a machine on the network.

## Self-hosted DNS Resolvers

One of the earliest things I did (as did many other people) was to host the DNS
resolver locally on a network. In fact, for many years, I used to run a DNS
resolver on my own laptop and used it to resolve (and cache) names to IP
mappings locally. I also always ran a DNS resolver on the network (in our
office, for example) for use by other network clients.

The primary reason for doing this was to control the process of DNS resolution
and also place this resolver very close to the user to provide the best
possible DNS resolution and caching performance. Another reason was that ISP
DNS servers were not always reliable and could also perform badly under load.
Additionally, if there were a lot of machines on the local network, then
sending all this traffic over to the ISP would actually add a delay to the DNS
resolution process (and hence to the users' Internet usage experience).

The <a href="https://cr.yp.to/djbdns/run-cache.html" target="_blank"
rel="noopener">DNS resolver that we used to setup</a> (and still do in so many
cases) is called `dnscache`. Written by <a href="https://cr.yp.to/djb.html"
target="_blank" rel="noopener">Dan Bernstein</a>, it is extremely secure,
simple, lightweight yet powerful toolset that do almost everything related to
DNS serving and resolution.

## Using Google DNS

Sometime in 2009, Google launched a public DNS service called <a
href="https://en.wikipedia.org/wiki/Google_Public_DNS" target="_blank"
rel="noopener">Google Public DNS</a>. Their idea was to offer a fast, reliable
and secure DNS service that all sorts of consumers could use for DNS
resolution. Hence, if users chose to use Google Public DNS, then they wouldn't
have to setup a local DNS or use their ISP's. All DNS requests would go to
Google's servers and Google would route the requests from the user to a
resolver/cache closest to the user.

According to Wikipedia, Google Public DNS is one of the most widely used and
popular DNS server on the Internet handling billions of requests each day from
all over the world.

The reason people started to use Google DNS (in my opinion) is that it was an
easy to remember IP address (<code>8.8.8.8</code>), it worked reliably from all
ISPs and most importantly, they no longer needed to setup and maintain an DNS
server of their own anymore. In other words, it delivered a <em>significant
convenience</em> over existing methods of running or configuring a DNS
resolver. Since Google setup their DNS servers all over the world, as a part of
their "Google Edge Network" (essentially a Content Delivery Network - CDN),
these servers responded really fast and there was not much loss of
latency from using a DNS resolver/cache on the local network.

Today the use of Google Public DNS has really proliferated. So much so that
most people are not even mindful of the possibility of running their own local
DNS resolver &amp; cache! Most young system admins today (as well as ISP
technicians who come and setup your new broadband connection) even configure
Google DNS by default in their routers and hence, that is what users
in a home or small office (or even large office) scenario end up using. And
this usage is not out of deliberate choice or careful decision making - but
simply because <em>this is something that works well, is known to work well and
hence, there is no need to consider other alternatives</em>.

This is how we have ended up loosing control over DNS. Let us now explore the
dark side of using Google DNS.

## Problems with using Google DNS

You might question the need for all this discussion. After all, there is a
little bit of Google in everyone's life! What difference is a simple DNS
resolver going to make? Lets examine this.

Google is essentially a company which offers to organise the world's
information in a manner that is<em> usable and useful</em> to you. It does so
by indexing websites and content of all sorts and then wrapping this index with
a search engine so that you can locate <em>relevant</em> information quickly.
How does Google know something is relevant or useful or popular? It tracks what
people click on (in search results) or watch (on Youtube, for example). It
rates content based on a variety of parameters (not just content) and then
presents it to you in a way it thinks would be most relevant to you.

## How does Google make its search results more relevant to us?

When you're searching for the phone number for a coffee shop in your city or
locality, it won't return the details of a similarly named coffee shop in
another city or country.... and it can do this because it knows where you are
(based on your IP address or the wireless network you're connected to or your
GPS location), what type of device you are using to make this query (mobile v/s
desktop) and how you might want to use this information (to make a phone call
or to visit a website or see a rating and so on).

In a way, Google is <em>manipulating</em> the information it feels is most
useful to you and usually, that works just fine for most of us.

The key to all this <em>help</em> that Google offers us is, however, its
ability (and need) to track what we do on the Internet. This tracking includes
its ability to record your search queries (and tie them in to your name, email
address, gender, employer, location, operating system etc) and your internet
visits (which websites you visit, how often, in which sequence etc).  Which
each application / website you use on the Internet might use its own log and
tracker, Google is pervasive enough to know at least some details.

## Google DNS, tracking and Ad serving

Hence, if you use Google DNS at home or at work, Google can capture details
about which domain names are popular, which domains send out (or receive) most
email, which domain names are more frequently visited (or queried) from a
certain location (or city, or country) and so on. By offering this
free-of-charge and extremely convenient service, Google can now track the
world's Internet usage and further use this information to organise, classify
and present content to you using its search engine.

This is not problematic in itself, of course. Why wouldn't we expect Google to
do such a thing (given that they are essentially a company who's business model
is that of serving ads)? How is it Google's use of this information different
from another ISPs? Is this an established way of life now - where we trade
privacy for some convenience?

## Google DNS and Email

Think of another aspect. Lets say a computer is infected with a virus and is
trying to access a bunch of websites on the Internet. In such cases, two types
of information can be captured by Google DNS -- the source of the virus (at
least the network or ISP or location) and the details of the DNS queries that
the virus is trying to make. These details can then go into the Google
Gmail product for further strengthening their anti-virus and anti-spam system
-- enabling them to deliver a cleaner mailbox to you.

While this might be a positive outcome of the fact that Google runs the mail
service, the DNS service and the search service, it also offers them the
ability to do such spam classification based on IP addresses and domain names
at an unprecedented level! Who else can match the extent of information that
they can track and record?

## Google's DNS Privacy Policy

No matter what your perspective might be, the truth is that some details about
you are definitely going to be permanently stored with Google for, at least,
some time whenever you use Google DNS to resolve a name. Check out their <a
href="https://developers.google.com/speed/public-dns/privacy#what_we_log"
target="_blank" rel="noopener">Public DNS privacy policy</a> on this aspect for
more details. Here is a summary of the relevant parts:

![google-privacy-policy](/wp-content/uploads/2018/04/google-dns-privacy-policy.png)
<p class="caption">Are we really ready to trade our privacy for saving the 300 seconds that it
might take for us to setup a local, private and self-hosted DNS
server?</p>

This is something that we must think about and decide for ourselves. Do you
want our Internet usage to provide inputs to Google in its all too-important
mission to organise, index and serve the world's information?

## Enter CloudFare's DNS Service</h3>

A lot of these thoughts were triggered by Cloudfare's launch of what they call
their "privacy-focussed public DNS" service. They questioned the status quo and
launched an equally convenient service that seeks to offer more privacy and
improved performance as well. (Cloudfare is, after all, a CDN as well! Rolling
out such a service globally would be easier for them.) They say that they
don't log any user IP addresses, that they anonymise any information that they
might store (for telemetry and performance measurements, for example) and they
don't share this information by any third parties (apart from APNIC - who
they've partnered with to launch this service).

The difference between Cloudfare and Google DNS would that be that even if
Google did not share its DNS related tracking information with third parties,
it <em>could</em> (would?) share it with its own search engine. The search
engine is no third party for Google.

So should we all shift to use <code>1.1.1.1</code> as our default DNS servers
now? Is the Cloudfare approach the best thing to have? Can we trust Cloudfare
to live up to its <em>"social contract"</em> forever in future? I really don't
know. But if you are now more aware of these concerns, I have a pair of
suggestions to offer.

## What is the best solution?

The absolute best thing to do would be to <strong>self-host your own DNS
resolver</strong>. These are extremely simple services to deploy, host and
secure. They don't need power servers either. A simple Rs 800 (US$ 11) wireless
router is powerful enough to do this job for a small network. Or you could even
use a desktop computer or a Raspberry Pi or server.

There are a variety of Free Software tools that enable you to do this.
`dnscache` is one of them. Another one is called `dnsmasq` and it is extremely
simple to configure and deploy. A more heavy weight solution is to use
<code>named</code> (BIND). Almost all GNU/Linux distributions ship with these
tools by default.

If you can not deploy an additional device to serve local DNS for your network,
then the next best option might be to use a public DNS system that promises
some privacy. Cloudfare's offering might be one of the options available. I
 am sure there are many more that you can find and use.

## Should we all stop using Google DNS then?

Sure. If you can do that, that's a good first step to opt-out of being tracked.
It is not a very complex choice to make. If you are responsible for making such
choices, please do that. If you know someone who is authorized to make these
choices, encourage them to understand these issues and then make a smart
choice.  

## On what basis do I make these claims?

The claims and explanations above are based completely on my inference and not
on facts that I am personally aware of. The conclusions that I arrive at above
should be true given the premises and assumptions that I have based them upon.
But then again, I do not possess factual information about this.

However, it is definitely <strong>not</strong> going to hurt you to self-host
your DNS resolver and cache.

