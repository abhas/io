---
id: 354
title: 'Swatantra 2017: Behind the Scenes'
date: 2018-02-27
author: Abhas Abhinav
layout: post
permalink: /2018/02/swatantra-2017-behind-the-scenes/
image: /wp-content/uploads/2018/02/swatantra-backdrop.jpg
toc: true
subtitle: The Swatantra conference is a rather unique
  conference organised by ICFOSS in Trivandrum. Its unique because of the
  extremely rich discussion that it creates around the ideology of software
  freedom, rather than the technology.  I was fortunate to be a part of this
  conference in multiple ways in December 2017. And this is a short account of
  the same.
categories:
  - adventures
  - free-hardware
  - free-software
  - learning
---

  ![Header Image](/wp-content/uploads/2018/02/swatantra-backdrop.jpg) 

The <a href="https://swatantra.net.in">Swantantra conference</a> on Free 
Software is a rather unique conference organised by <a 
href="http://icfoss.in">ICFOSS</a> in Trivandrum. Its unique because of 
the extremely rich discussion that it creates around the ideology of 
software freedom, rather than the technology. I was fortunate to be a 
part of this conference in multiple ways in December 2017. And this is a 
short account of the same.

## Background

The intention of the Swatantra conference is gather a variety of 
viewpoints centered around the core concept of software freedom. 
Preparations for the conference started around June 2017 when a 
conference committee was formed to discuss the theme, content and 
speakers for the conference. The theme for the 2017 edition of this 
conference was "<em>Free / Open Source Software for Sustainability: 
Communities, Culture, Governance and Technologies</em>".

One of the things one finds at conferences (even conferences that are 
entirely about Free Software) is that because something was outsourced 
to someone else or because it was technologically inconvenient to use an 
alternative, a part of the conference operations are run using 
proprietary software (like it or not). So one of the things I tried to 
do was to find ways of avoiding this completely. This was done in two 
ways:

  * Use the <a href="https://hdmi2usb.tv/home/">hdmi2ub.tv</a> 
    infrastructure to record the conference talks using free software 
    &amp; free hardware (the <a 
    href="https://hdmi2usb.tv/numato-opsis/">Numato Opsis</a> boards) 
    exclusively, and

  * (by taking help from <a href="http://unmukti.in/">Nishant</a>), 
    building the Internet access infrastructure without a hotspot / 
    wireless system that tracked users and logged their Internet access 
    and so on.

I felt that these two issues were completely behind-the-scenes sort of 
things that routinely get looked over and because they are generally the 
invisible parts of a conference, people usually think that they are 
"<em>somebody else's problem</em>". So what Nishant and I set out to do 
was to own these problems and try to solve them as elegantly and 
effectively as we could.

## Conference Day 0: 19th December 2017

![](/wp-content/uploads/2018/02/day-0.jpg)
<p class="caption">The conference backdrop being mounted behind the main stage</p>

We landed up a day prior to the conference so that we could go to the 
venue in advance and get the video capture systems and wirless access 
points / firewall operational. (I was also carrying 3 Thinkpad X230 
laptops with me flashed with <a 
href="https://www.coreboot.org/">coreboot</a> and with non-Intel 
wireless cards that I was going to hand over to Arun and Nishant for 
their use. But more on that in a bit.)

ICFOSS had been kind enough to order 3 units of the Numato Opsis board 
and I was carrying my own unit with me as well. I had also ordered 3 
long (30ft and 50ft) high speed HDMI cables and power supplies for the 
Opsis boards. Nishant had 3 access points with him in addition to a 
firewall board -- all running OpenWRT customized by him specially for 
the conference.

### Setting up the Numato Opsis Boards

  ![Numato Opsis](/wp-content/uploads/2018/02/opsis-acrylic.jpg)
  <p class="caption"> A Numato Opsis board mounted on the acrylic sheet </p>

The first thing to do was to physically unpack the Opsis boards and 
mount them on 6mm thick acrylic sheets that I had cut / drilled and 
carried with me. Mounting the Opsis board on this acrylic sheet gave the 
board some weight and make it stable (so it wouldn't get pulled by the 
weight of the cables) and also make it possible for someone to carry the 
board without having to touch the PCB.

  ![Numato Opsis Stack](/wp-content/uploads/2018/02/opsis-stack.jpg)
  <p class="caption"> A stack of Numato Opsis boards </p>

The next thing to do was to flash the latest hdmi2usb firmware on all 
the boards. By default, they come factory flashed with a rather old 
version of the firmware. Abhlish (from ICFOSS) has arranged for 3 
desktop computers to be used for the video capture purpose with a fresh 
installation of Ubuntu on them. In order to flash the firmware on each 
of the Opsis boards, the correct set of packaged needed to be installed 
on one computer.

  ![Numato Opsis Flashing](/wp-content/uploads/2018/02/opsis-flashing-in-progress.jpg)
   <p class="caption"> Opsis firmware flashing in progress </p>

The Opsis board connects to the computer over USB and presents itself as 
a serial device (`/dev/ttyACMx`) as well as a v4l uvc video device 
(`/dev/videox`). Using a mode-switch tool, the board can be set to a 
special JTAG mode that will allow new firmware to be programmed onto it.

Once the boards had the latest firmware, it was time to setup the <a 
href="https://code.timvideos.us/projects/voctomix/"><code>voctomix</code></a> 
tool. Votcomix takes multiple audio and video streams and combines them 
as one single stream which can then be streamed live or recorded to 
disk. It also allows one to do live "video mixing" and tiling. When 
combined with <a 
href="https://github.com/CarlFK/voctomix-outcasts">scripts and 
documentation</a> written by Carl Karsten, it provides an almost 
complete solution to record a conference's proceedings. Since we had 4 
opsis boards, the idea was to use 2 in the main auditorium and 1 each in 
the other smaller rooms where talks were being held.

  ![Opsis Test Patterm](/wp-content/uploads/2018/02/opsis-test-pattern.jpg)
  <p class="caption"> Video test patterns in voctomix -- one of the test patterns is 
  from the Opsis board while the other one is from software (gstreamer) </p>

In the main auditorium, we had 2 Opsis boards connected to the computer: 
one to record the live video of the speaker and one to record the output 
of the speaker's computer. Hence there would be two video streams that 
voctomix would be <em>mixing.</em> A current limitation of the Opsis 
board is that it can't yet capture audio from HDMI. Hence, we had a 
composite audio output from the audio mixer to the capture computer. 
Theoretically, that should have enabled us to capture video with synced 
audio.

However, we didn't have enough time to figure out how gstreamer was 
going to capture the audio capture and so the mixed video was recorded 
without any audio. :(

  ![Two Opsis](/wp-content/uploads/2018/02/flashing-opsis.jpg)
  <p class="caption"> The two Opsis boards connected to the capture computer for the 
  main auditorium </p>

### Setting up the firewall and wireless access points

While I was trying to get the Opsis boards functional, Nishant was 
working on building the firewall and getting the wireless access points 
to work.

  ![APs](/wp-content/uploads/2018/02/wireless1.jpg)
   <p class="caption"> Access point getting configured </p>

![Captive Portal](/wp-content/uploads/2018/02/captive-portal.jpg)
 <p class="caption"> The splash screen for the captive portal </p>

![Firewall and AP](/wp-content/uploads/2018/02/firewall-behind-table.jpg)
<p class="caption"> The firewall, wireless access point and fibre leased line equipment
hidden behind a table outside the main auditorium </p>

The rationale behind what Nishant built was two-fold:

  * When participants and speakers at the conference use the wireless 
    network to access Internet they are aware of the fact that the 
    network infrastructure is built using free software

  * Users are also made aware of the fact that these services are 
    completely local in nature and don't track their users, record their 
    activity or send data to third-parties on the Internet.</li>

Typically, using a public access point at an airport, coffee shop or hotel
makes you submit to a variety of possible access controls, tracking mechanisms
and other problems. At the Swatantra conference, none of this would happen.

## Conference Day 1: 20th December 2017

The first day of the conference started with an extremely thought 
provoking talk by Karen Sandler.

![karnel-talk](/wp-content/uploads/2018/02/karen-talk.jpg)
<p class="caption">Karen's talk and presentation being captured live using two Numato Opsis boards</p>

This was then followed-up by the official inauguration by the Chief Minister
and the IT Secretary. I had my own talk a little later on:

![abhas-talk](/wp-content/uploads/2018/02/abhastalk.jpg)
<p class="caption">The slides for my talk being projected to the screen </p>

Another idea that I wanted to work on about interviewing people who were a part
of the free software community in various capacities. I wanted to record
interviews with them to understand why they cared about software freedom, how
they got started, how they lead their lives and what sort of problems they are
trying to solve currently. We had access to a room where Nishant and I setup
our audio equipment to record these interviews. However, we were unable to
record any on the first day of the conference.

![no-interviews](/wp-content/uploads/2018/02/no-interviews.jpg)
<p class="caption">We were unable to schedule any interviews on the first day!</p>

Finally, the day ended with a splendid concert.

![concert](/wp-content/uploads/2018/02/concert.jpg)
<p class="caption">The Concert!</p>

A recurring theme during the 1st day was problems with the recording setups.
While there were shell scripts to encapsulate almost all commands, there were
still failures. And sometimes the only way to resolve the problems (Opsis board
not getting detected, for example) was to unplug everything and start all the
services and scripts from scratch.

## Conference Day 2: 21st December 2017

On the second day of the conference, I was actually able to attend a few talks
and learn so many new things and new ways of thinking. Nishant and I were also
able to record 5 interviews on the second day. Once I am able to transcribe
them and clean up the audio, they will be available on the <a
href="https://freetalk.show">The Free Talk Show</a> website. I am confident
that there will be a lot to learn for each of us from listening to these
extremely inspiring personalities who lead by example.

Nishant made his presentation on the second day:

![nishant-talk](/wp-content/uploads/2018/02/nishant-talk.jpg)
<p class="caption">Voctomix showing the video streams for Nishant's talk </p>

The concluding day of the conference had very interesting talks by Marco
Fioretti (freeknowledge.eu), Todd Weaver (puri.sm) and Raghu Kamath
(raghukamath.com) among others.

## The X230 Laptops

I recently realised (ie. about 4 months ago) that it is possible to purchase
used X230 and X200 Thinkpad laptops are extremely low prices here in Bangalore.
With these laptops, it is possible to use coreboot and libreboot (respectively)
as the firmware - thereby completely eliminating the proprietary firmware
that is shipped by Lenovo. Doing this not only gives you much more control
over the laptop, but it also allows you to replace the Intel wireless card
that the laptop ships by default (and which requires proprietary firmware to
work with) and replace it with Atheros based wireless cards that work
without any proprietary firmware. I got 3 such units with me for Nishant and
Arun (who wanted to use them at <a href="http://www.space-kerala.org/">SPACE</a>).

![coreboot-flashing](/wp-content/uploads/2018/02/flashing-coreboot.jpg)
<p class="caption">Flashing coreboot onto a X230 </p>

![wireless-card](/wp-content/uploads/2018/02/replace-wireless-card.jpg)
<p class="caption">Replacing the Intel wireless card with Atheros</p>

## Finally...

We participated in an extremely fun Christmas celebration with the entire
ICFOSS team. That was an excellent conclusion to three very hectic, energising
days filled with tremendous learning.

![icfoss-team](/wp-content/uploads/2018/02/icfoss-team.jpg)
<p class="caption">The ICFOSS team </p>

![icfoss-lobby](/wp-content/uploads/2018/02/icfoss-lobby.jpg)
<p class="caption">ICFOSS office decorated for Christmas </p>
