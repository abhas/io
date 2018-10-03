---
id: 417
title: 'Choosing Freedom & Privacy on your Android phone'
date: 2018-04-10T13:59:10+00:00
author: Abhas Abhinav
layout: post
guid: http://solitude.io/?p=417
permalink: /2018/04/choosing-freedom-privacy-on-your-android-phone/
image: /wp-content/uploads/2018/04/android-header.png
subtitle: What do one forsake when one chooses to use a proprietary mobile
  operating system? How can one claim one's privacy back? How does self-hosting
  impact the choice of software and network-services on your phone?
toc: true
categories:
  - adventures
  - convenience
  - free-software
  - privacy
---

![Free Software Apps](/wp-content/uploads/2018/04/android-header.png) 

## Background

I have been using an Android phone for about 6 years now. I have been 
using GNU/Linux exclusively since 1998. Hence, the desire to have a 
phone that provided me with the same freedom and flexibility has been 
very strong.

Unfortunately, a few months back I realised how I had accepted a life 
where I could have complete freedom and privacy on my computer but was 
content with having almost none on my phone. I was surprised at how I 
was ready to tolerate proprietary software (and evil practices) on my 
phone when I would never install or use such software on my computer.

This is an account of that introspection and my reasons to take various 
steps to have more freedom and privacy while still using Android on my 
phone.

## The Realisation

For about 9 months now, one thing that was nagging me repeatedly was how 
easy it was for proprietary software to make its way into my life - 
getting past my most stringent checks and standards. I would download 
applications from the Google Play store, I would even pay to use some of 
them so that I could get rid of ads or get additional functionality and 
I would get blinded by how easy these apps made my life sometimes. 
Somehow, I found it okay to accept the proprietary nature of 
these software applications. For some reason, I did not subject them to 
the same standards that I subjected software on my laptop and servers.

  ![A whole bunch of proprietary 
  software](/wp-content/uploads/2018/04/proprietary.png) 
  <br> Proprietary software on my old Android phone

And then I realised that this was purely a convenience! I was blinded by 
this convenience and was sacrificing my privacy (and more). I was using 
proprietary software to make utility bill payments, to store notes and 
memos, to listen to music, to talk to acquaintances, to send pictures to 
family members and friends and so much more. Even though I was aware of 
free software replacements of these tools, at times, I would still not 
choose it because they, seemingly, weren't good enough!

Would I take similar decisions had it been my laptop? Or a server? I 
don't think so. Then why was I allowing myself to be sold? What was the 
reason for this apparent contradiction? How could I consider my value 
system to be consistent, if I made both these choices and accepted both 
of them? Or then, these must not be choices based on a common value 
system? I was, supposedly, holding myself to different standards in 
different situations!

## The Technology

So what was it so unique about Android that it made it possible for me 
to do things that I really wouldn't have wanted to do? How is that 
Android made it so simple to access and run proprietary software? Why 
was it so easy to forsake a mindful choice of using free software for 
the convenience that had other costs (loss of freedom and privacy) 
associated with it? To understand this, let me try to explain how 
Android phones are built.

### What is Android *really*?

Android, essentially, runs the Linux kernel. It is not the standard, 
mainstream kernel, however. The Android system forks and independently 
maintains this forks of the Linux kernel so that it is suitable to run 
on handsets, tablets and so on. The Android Open Source Project (AOSP) 
is the parent project where all the development happens. AOSP includes a 
framework into which a device manufacturer can plug-in their 
device-specific code so that Android can work well with the features, 
limitations and hardware facilities available in the device.

  ![Android Architecture](/wp-content/uploads/2018/04/android-architecture-300x278.jpg) 
  <br> Android Architecture

There are certain parts of Android that are (almost) always implemented 
using proprietary software by device manufacturers. These parts include 
"the baseband" (a software system that controls all the communication 
components of a phone - the wireless, mobile radio, bluetooth, gps and 
so on), "some Linux kernel modules / drivers" (the AOSP-derived kernel 
with device-specific proprietary extensions) and "application software" 
(the launcher, the Google Play framework and services, location 
services, "useful" application software and so on).

### How do you put Android on a phone?

When you buy an Android-powered phone, you receive a well-integrated 
software package that is aware of and customised / tuned for the 
hardware it is running on. The device manufacturer then provides you 
updates for this software. Since, we purchase the phone as a 
special-purpose device (who's function is to make calls, provide 
Internet access, run application software etc.), we don't treat it as a 
combination of hardware and software.

When we purchase or use a computer, we are very aware of this separation 
and distinction. On a computer, we know where our hardware ends and 
where the operating system (such as Debian GNU/Linux) starts. We are 
also, generally, aware of the fact that we can get the operating system 
to work in a similar manner on most other computers irrespective of the 
underlying hardware differences.

Android is also the same thing - its just our perception that is 
different. A phone manufacturer takes the AOSP (Android Open Source 
Project) source code (Google publishes it publicly whenever they make a 
new Android release), adds their device specific drivers and software 
and then put on a *skin* to make it look different or unique - an 
attempt to entice users with its "coolness" factor and functionality. 
This promotes the notion that the hardware and software are uniquely 
combined and welded together. And that to get the software 
functionality, you need to purchase the hardware as well. But that is 
not true at all.

## Your own, custom Android OS?

It is possible to take the AOSP source code and recompile it 
yourself by adding the proprietary components from the device 
manufacturer. This would give you a "standard" or "vanilla" Android 
feel. Google's devices usually have this feel since they are built 
directly from the corresponding standard AOSP source code. As long as 
the device you own allows you to install your own Android compilation 
(ie. it can be *unlocked*), you can completely remove all 
software that is provided to you by the device manufacturer and instead 
run your own custom-compiled Android version.

Once you are able to do that, you can realise how clear the separation 
between the hardware and software on a phone is. You will also 
understand that hardware itself is only half the story -- the hardware 
is useless unless it is driven by the right software. (So if there is no 
free software component available to drive a particular hardware on the 
phone - perhaps a dual-camera or a sensor - you will not be able to use 
it in your custom-compiled Android unless you also use the device 
manufacturer's supplied proprietary software.)

There are many projects that seek to do exactly this. They take 
the AOSP source code and the proprietary device-specific code for a 
specific phone and pre-compile and package it so that you can install 
and use it, if you choose to. The <a 
href="http://lineageos.org/">LineageOS project</a> is the most prominent 
and comprehensive project that aims to support a wide variety 
of devices. Most other projects such <a 
href="http://www.aokp.co/">AOKP</a>, <a 
href="http://www.resurrectionremix.com/">Resurrection Remix</a>, <a 
href="http://get.aospa.co/">Paranoid Android</a> etc either use 
LineageOS as a base or AOSP directly. All of these provide you with 
pre-compiled, easy-to-install and immediately usable Android images that 
you can flash on a variety of devices. They also publish the 
corresponding source code on Github or elsewhere so that you can rebuild 
the same Android image yourself.

## How does a custom ROM like LineageOS help?

By using LineageOS (and other such distributions) on your phone, you 
achieve consistency in the user experience across devices. If you 
install LineageOS on three different devices, the end result will be 
similar - you will get the same AOSP-based user interface with a mix of 
add-on apps developed by the LineageOS team to make the end-result more 
usable.

Just like installing Debian across computers of different hardware 
configuration and architectures provides the same consistent user 
experience, so does LineageOS (and other such distributions). You no 
longer need to put up with bloatware and user interface skins provided 
by your device manufacturer. If you device is supported by LineageOS, 
you can simply install Lineage on it and feel comfortable with its user 
experience. No matter which device you use, you will find the same set 
of settings options and the same default apps.

After that, if you want, you can still install and use Google services 
and make your phone function like a phone that is a part of the 
"standard" and "default" Android ecosystem.

## What had I been doing wrong all these years?

Ever since I owned a Google Nexus 4 device some 5 years back, I had been 
using LineageOS (then called Cyanogenmod) on my phone. I would choose my 
phone based on its ability to run an unofficial, community developed and 
packaged Android distribution. I would then proceed to remove the 
default Android OS and install this "unofficial" distribution to make my 
phone usable.

The mistake I was making for all these years was to then install a 
special GApps package to get the functionality of the Google ecosystem 
on my phone. (LineageOS can not ship with this proprietary Google Play 
functionality because of licensing restrictions. It has to be downloaded 
and installed separately.) This gave my phone the ability to use Google 
Play services and install software from the Google Play store. And that 
is where the road to proprietary software and tracking starts!

## The problem with using Android and the Google Play ecosystem

While there are quite a few applications in the Google application 
catalog that are free software, a bulk of the applications are not. 
Chances are that almost everything that you use regularly is 
proprietary. In other words,

<ul>
  <li>It does not ship with source code,</li>

  <li>The developer is the only one who knows how it works or what it 
  does,</li>

  <li>It probably relies on Google Play services to send notifications 
  or integrate with other apps,</li>

  <li>It possibly uploads your data to the developer's (or a third 
  party's) server for backup / analytics / data-mining / sending alerts 
  etc, and</li>
  
 	<li>it might use file formats that might be proprietary in nature.</li>
</ul>

So if you use the application a lot and use it to manage a lot of data, 
you will probably need to continue using it to access your data. If you 
delete the app from your phone, that does not automatically scrub your 
data from their servers. If you re-install the app, you can access your 
data again. Effectively, you become <em>locked-in</em> to the app and 
its functionality. What might have begun as a convenience, is now a 
compulsion.

What if you have real money stored inside the app? Or your coffee shop 
rewards points? Or your favourite taxi operator's routes? They are all 
accessible only if you use that app. You would completely loose access 
to them if you stopped using the app.

And this is the problem with the Google Play ecosystem. It pushes 
proprietary software to you, it enables application developers to lock 
you in by using proprietary data storage and access techniques, it 
tracks what you do on your phone (so that it can offer <em>better</em> 
suggestions / advice / notifications to you) and its cripples your 
ability to be in control of the technology you use for managing your 
day-to-day life.

While I was aware of all these issues, I ignored these dangers. While I 
would passionately talk about the value of choosing software freedom 
everywhere, somehow, I was okay with how this mobile operating system 
was snatching away what I valued most -- my freedom and privacy.

## The Action

This January, I purchased a new phone that could be unlocked and on 
which I could run Lineage OS without issues. I decided to choose a phone 
that had official LineageOS support so that I could continue to get 
updates. I also wanted to make sure that the source code for the device 
I was going to choose was available and updated. Hence, I chose the 
Samsung Galaxy S7 phone. It was good enough for my needs and for what I 
was planning to experiment with.

![Galaxy S7](/wp-content/uploads/2018/04/herolte.png) 
<br> Samsung Galaxy S7 page on the LineageOS Wiki

## Step 1: Choosing the software ecosystem

I then unlocked the phone and installed LineageOS on it. Of course, this 
time, I had no intention of installing Google Play services or any other 
proprietary tools. Instead, I have chosen to only install software that 
is distributed via the <a href="https://f-droid.org/en/" target="_blank" 
rel="noopener">F-Droid repository</a> or independently as a package 
built from published source code.

![F-Droid Repository](/wp-content/uploads/2018/04/fdroid.png) 
<p class="caption"> The F-Droid Application Repository </p>

This is not a very difficult challenge, actually. Today, there are a lot 
of very high-quality free software applications for Android. You can 
find applications for all your needs on F-Droid. When you install an app 
from the F-Droid repository, it is guaranteed that the application is 
free software in the purest sense of the definition. They specifically 
list and classify applications in case they have any of the following <a 
href="https://f-droid.org/wiki/page/AntiFeatures" target="_blank" 
rel="noopener">anti-features</a>:

<ul>
 	<li>the application contain Ads</li>

 	<li>the application tracks you (by default)</li>

 	<li>the application uses or promotes non-free network services</li>

 	<li>the application has or promotes non-free addons</li>

 	<li>the application has  non-free dependencies</li>

  <li>the application is derived from a non-free upstream application 
  and is specifically patched for f-droid compatibility</li>

 	<li>the application has some known vulnerability,</li>

 	<li>the application uses a disabled algorithm</li>
</ul>

If you still choose to use the application, you will do so with the 
awareness that it possesses one or more of these <em>anti-features</em>.

## Step 2: Choosing the degree of freedom and privacy you want

In spite of everything I have discussed above, it is still possible to 
install and use proprietary Android apps on your LineageOS phone - 
without even having to install Google play services. But choosing to do 
that defeats the very purpose of this whole exercise. There are three 
things you might need to consider when you're challenged with a 
proprietary Android app:

  *  Are you  choosing to install a non-free software application on LineageOS
    - ie. is it an application who's source code is not available and is not
    licensed under a Free / Open Source Software license?

  * Are you choosing to install a free software application that consumes or
    promotes a non-free network service? (Eg. F-Droid has "Telegram" in its
    repository and this Telegram client is built using the source code
    published by the Telegram team. However, even though the software is free,
    it still forces you to use a non-free / non-self-hosted network service.
    Another example of this might be a file-sharing or sync system. Or a music
    streaming service.)

  * Are you choosing to install a proprietary app which depends on a
    proprietary network service? ... and you're choosing to do so because, in
    the interim, you can't leave that "network" overnight. Or avoid using that
    service altogether. (Eg. Installing or using WhatsApp is an example of
    this. Or using a video streaming service.)

Each of these compromises make dent into your freedom and desire for 
greater privacy. If you are going to make any of these choices, then it 
would be useful to make them mindfully so that you are also aware of 
their side-effects and hence, can take requisite precautions to protect 
yourself from the undesirable ones.

## Step 3: Biting the bullet!

Finally - you will just have to decide, one day, that you're going to do 
this exercise mainstream. I did that after I had carefully installed and 
configured the most useful applications required. I still had my old 
phone which still had proprietary apps but I decided not to use that 
phone or only use it for messaging till I could encourage everyone who 
needed to communicate with me to use alternate channels.

I did not face any major inconvenience. Surprisingly, it was a great 
learning experience. (<em>Surprisingly</em> because I thought I knew 
whatever there was to know about LineageOS + Android since I'd been 
using it for many years.) Its only when you do an exercise like this, 
that you realise how many important aspects of your life actually rely 
on non-free and proprietary software.

But I was happy with the choices I was making. It was refreshing to not 
use proprietary apps on my phone. It was good to be in sync with my 
value system again. I was proud to tell everyone <em>(not that most 
people care, but still...)</em> that I was not using proprietary 
software on my phone any more.

![Free Software Android apps on my phone](/wp-content/uploads/2018/04/apps-1-649x1024.png) 
<p class="caption"> Free Software Android apps on my phone </p>

## The Consequences

Let discuss the after-effects of my shift:

<strong>1.</strong> Since my preferred method of communication was not 
what most people liked to communicate on, it took some effort to 
encourage others to use free platforms for communication. I prefer 
email, <a href="https://riot.im/" target="_blank" 
rel="noopener">Riot/Matrix</a>, SMS and calls (in that order). But I 
can't impose these choices on others.

<strong>2.</strong> I gradually stopped using proprietary and 
tracking-heavy chat platforms such as WhatsApp and Google Hangouts 
completely. Since I never checked messages there, people were forced to 
seek me out using other means and that's a definite plus. I think I can 
delete my accounts now.

<strong>3.</strong>  As a compromise, I chose to be present on a few 
other communication platforms that at least (a) had free software client 
apps and (b) were known to be privacy respecting systems.

<strong>4.</strong> Since I was already using a personal <a 
href="https://nextcloud.com/" target="_blank" 
rel="noopener">Nextcloud</a> instance to sync my data and manage other 
aspects of technology (where proprietary cloud apps usually come in), I 
simply continued to use those practices seamlessly on my new phone. I 
did not have any data (files, photos, emails, contacts) on any other 
network service.

<strong>5.</strong> I further extended my self-hosted tool-set to 
include a <a href="https://manual.calibre-ebook.com/server.html" 
target="_blank" rel="noopener">ebook library</a>, a <a 
href="https://links.solitude.io" target="_blank" 
rel="noopener">bookmarking system</a>, a <a 
href="https://www.wallabag.it/en" target="_blank" 
rel="noopener">read-it-later system</a> and a <a 
href="https://tt-rss.org/" target="_blank" rel="noopener">RSS-based news 
reader</a>.

<strong>6.</strong> Since none of the taxi services or banking, payments 
and wallet services are free software, I just stopped using them. I also 
realised that some of them won't even let me delete my account and so I 
have started bugging their customer support teams to do it for me.

After using this ecosystem for about 4 months now, I can confidently say 
that I have no regrets and I don't face any loss of productivity in any 
way. If I feel inconvenienced or limited, I remind myself of how I did 
not give up on GNU/Linux twenty years back.

  ![Maps with OSMand + OpenStreet Map](/wp-content/uploads/2018/04/osm.png) 
  <p class="caption"> Maps with OSMand + OpenStreet Map </p>

## Is this for you?

I expected at least a few people to ask me if they should do this as 
well. But over the past 4 months, no one has asked me this question, 
yet! But let me answer it anyway.

This is definitely an option for you. At the same time,  you also have 
to understand that you will invite some inconvenience along the way and 
when you do, you should be ready to wade through it and keep going 
forward. There is no difference to make and there is no critical mass to 
reach if we give up easily instead of trying to find alternate 
solutions.

Making the set of choices I have made can be tough initially. If you 
care enough, you will find it easy to make these decisions and I am here 
to help you out. Finally, making these choices and retaining them boils 
down to how important it is for you to use Free Software on your 
computing and communication devices. If that is not something that you 
want to compromise on, then you're all set. I am confident that you will 
make these choices and stay on course.

Here is a further FAQ to guide you.

<hr />

## A Small FAQ

<strong>Q: Have you really stopped using all proprietary apps on your 
phone?</strong>

<strong>A:</strong> Yes. My primary phone no longer has any proprietary 
software on it. Any non-free network services that I use are fueled by 
apps released a free software.

<strong>Q: So there is no proprietary software at all on your 
phone?</strong>

<strong>A:</strong> Its not possible to have a phone made-up of free 
software entirely. Due to the nature of the phone hardware industry, the 
firmware that drives the baseband (ie. the networking components of the 
phone) is implemented as proprietary software. There is also other 
microcode and firmware that is required to use the SoC 
(System-on-a-Chip), to use the GPU (Graphics Processing Unit) and so on.

The <a href="https://puri.sm/shop/librem-5/">Librem 5 phone</a> will 
change much of this when it launches. Keep checking their progress to 
see how they're faring.

<strong>Q: Are there any other GNU/Linux-based operating systems for 
mobile devices?</strong>

<strong>A:</strong> <a href="https://sailfishos.org/">SailfishOS</a> is 
a promising mobile operating system that works and is available for use 
right away. It is possible to use <a 
href="https://www.plasma-mobile.org/">KDE Plasma</a> on some phones. The 
<a href="https://ubports.com/">Ubuntu Touch</a> project was  aimed at 
build a converged Ubuntu-based mobile operating system.

For a truly free re-implementation of Android, that is mostly blob-free, 
check out the <a href="https://www.replicant.us/">Replicant project</a>.

<strong>Q: If you cheat by using App 'D', how can you say that your 
choices are consistent with your stated value system</strong>?

<strong>A:</strong> This is how I look at it: I have have been able to 
eliminate all aspects of proprietary software that affect my work, 
productivity or life in any way. I don't store any data on a proprietary 
network or cloud service and I self-host everything that I need. If I am 
using any proprietary software, I have it on my old phone.

On that phone, I have removed everything other than some entertainment 
apps. Then - are these apps my weakness? Am I going to justify my choice 
of using them by saying that they are just entertainment and not 
connected to my work or life? No - I wouldn't say that. I, myself, am a 
work in progress. My choices are changing rapidly as well. I have no 
dependency on proprietary software or network services to lead my life. 
Each day, I draw the circle closer.

<strong>Q: How do you do 'X' now? What is the free software replacement 
for 'Y'?</strong>

<strong>A:</strong> That is a very good question. I intend to write a 
follow-up article on all the apps I find useful and how I have replaced 
this "X" and "Y".

  ![Free Software Apps](/wp-content/uploads/2018/04/android-header.png) 

<hr />

Please feel free to write to me if you made a similar choice or need help in making it.

