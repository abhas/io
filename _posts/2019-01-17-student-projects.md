---
title: "Student Projects - January 2019"
date: 2019-01-16
Author: Abhas Abhinav
layout: post
permalink: /student-projects/
toc: true
image: /images/2019/01/osfy.png
subtitle: Here are some interesting, challenging and short-term projects
  to work on. They are all free software projects and can be done over
  any time-frame from 2 weeks to 3 months. Happy hacking!
description: Here are some interesting, challenging and short-term projects
  to work on. They are all free software projects and can be done over
  any time-frame from 2 weeks to 3 months. Happy hacking!

---

## Overview

Here are some free software projects that students can work on. I expect
that multiple students will work on the same project but with different
approaches.

Some of these project are research and documentation projects (tagged:
`research`) while others are development and documentation projects
(tagged: `development`).

## Modalities

These projects are only meaningful if we do them in the *right way*.
Here are some modalities for these projects if you choose to work on
them with me:

  * The projects should only be done on a GNU/Linux operating system and
      without the use any proprietary software

  * All projects will require regular reporting so that we can review
      work on time and ensure that you are progressing in the right
      direction.

  * You should be ready to learn a lot - I will help you define the
      learning goals and the research, documentation, note-taking and
      outlining techniques that could be useful.

  * The version control system we will use is `git`. This will be backed
      by a private and self-hosted project management system, bug
      tracking system, CI system and wiki.

  * Documentation would need to be written using markdown and will also
      use `git` as a storage and collaboration backend.

  * You can chat with me via
      [Matrix](https://matrix.org)/[Riot.im](https://riot.im) in case
      you need to use instant messaging. Otherwise, email and the
      project management system should be sufficient for discussions.

  * Any mobile applications that we develop for Free-Android will not
      depend on any proprietary software or service and will also be
      licensed as free software. Study the requirements for publishing
      software in the [F-Droid](https://f-droid.org) repository and use
      that while building your software.

## Web Applications

### Themes for Starli

#### About

[Shaarli](https://github.com/shaarli/Shaarli) is a self-hosted
bookmarking tool. It helps you store your bookmarks on your own server
and annotate and share them publicly (if you wish).

#### Why?

The default and available themes by the Shaarli community are not
*minimal* enough!

#### What? & How?

We need to build two sorts of CSS themes for Shaarli:

  * A `minimal` theme - similar to the way emails are listed in a mail
      client

  * A `dark` theme - which uses white text on a dark background - again
      listing the links in a manner similar to how mails are listed in a
      mail client

-----

### Simple CI system for gitea

#### About

[Gitea](https://gitea.io/) is a web-based git version control system. 

#### Why?

Unlike *full-blown* version control systems like Gitlab, Gitea does not
have an integrated Continuous Integration (CI) system. It however has
support for other third-party systems such as Drone CI and others.

#### What?

Here is what we will do as a part of this project:

  * Understand how webhooks work with Gitea

  * Integrate a CI system with Gitea that will run a CI pipeline on
      every git push

  * Document how to integrate a CI system with Gitea

  * Package and release a set of Docker containers that can be deployed
      and shared easily

----

### Patch for gitea to customise front page

#### What?

Gitea has a default front page that explains its features.

As a part of this project, we will develop a patch for Gitea that will
enable a Gitea admin to replace this front-page with a statically
generated website pointed to by a configuration line.

----

### Static site hosting for gitea

#### What?

Make it possible to use Gitea along with a CI system to deploy static
websites on `git push`.

----

### Wordpress-libre development

#### About

Wordpress is a very popular content management system (CMS) and blogging
engine.

#### Why?

There are multiple problems with Wordpress and its plugin ecosystem
today. Primary among them is the way Javasript code is loaded and used
across a website.

#### What?

We will modify the Wordpress source code and that of major and useful
plugins to achieve the following:

  1. All javascript and CSS should be loaded locally and not from a CDN.

  2. All *non-trivial* javascript should be
     [LibreJs](https://www.gnu.org/software/librejs/) compliant.

  3. It should be possible to take stock of the licensing of all the
     components that affect a single Wordpress instance.

----

### Jekyll - Rails shopping cart integration

#### About

[Jekyll](https://jekyllrb.com) is a static site generator written in
Ruby.

#### What?

Make it possible to integrate a static Jekyll website with a (Ruby on)
Rails shopping cart engine. Specifically, we are looking at integrating
the [Solidus](https://github.com/solidusio/solidus) shopping cart with
Jekyll.

#### How?

The final result should enable a developer (or user) to put in some
simple Liquid tags onto any jekyll page to connect and embed a shopping
cart with it.

----

### Jekyll podcast framework

It should be trivial to use Jekyll to publish a podcast, make sure the
podcast website can be viewed without using javascript, to customise the
looks of the website and finally, to publish it RSS feed.

----

### OSEM conference management system

Package and document the [OSEM conference management
system](https://osem.io) so that it is easy to use and effective for
running the cPf for a conference related to free software.

-----

### Self-hosted audio conferencing, recording and interview system

How does one use self-hosted free software to interview someone over the
Internet and also record the conversation? What if there are multiple
people in an audio conference?

Setup, document and package an effective way of doing this.

----

### Extensible and customisable email signup form

Build a framework to build an embeddable email sign-up form that can
work standalone or with a static website. It should be possible to code
the form using a simple text based definition language and without
having to write custom HTML or configure or customize a database.

-----

### Markdown newsletter submission system

Build a Jekyll-based newsletter submission system that can be used to
send a newsletter to an email list by just writing and publishing a new
jekyll post.

-----

## Coreboot

### Skulls-derived Coreboot distribution for X220 and X200

Build, test, package, document and release a
[Skulls](http://github.com/merge/skulls)-based or like Coreboot
distribution for the X220, X200 and X201 Thinkpad laptops.

----

### Custom logo integration into coreboot

Build, test, package, document and release a set of scripts (+ docker
container) to embed a custom image or graphic for use with Coreboot
during the boot phase of the computer.

----

### X200T Libreboot flashing success

The X200T uses a very different type of BIOS chip which makes it very
challenging to flash coreboot onto it. Document and package the process
of running Libreboot and Coreboot on the X200T laptop.

----

### Heads integration, validation and documentation with X230

While Heads works well on the X230, documentation and packaging are
required so that users can use it easily and effectively.

----

### Chromebook Coreboot distribution

Many Intel-based chromebooks (our development efforts will revolve
around `falco`) can run Coreboot by default. Build, package, document
and release a Coreboot distribution for the `falco` chromebook.

----

## Hardware Boards and IoT

### Documentation for Bus Pirate v2 and v3

#### About

The [Bus Pirate](http://dangerousprototypes.com/docs/Bus_Pirate) is a
mult-tool that talks to electronic stuff. One great use for the Bus
Pirate is to flash BIOS chips on a motherboard over the SPI bus.

#### What?

We need to test and release documentation that will enable anyone to use
the Bus Pirate to (at least) flash BIOS chips with Coreboot.

----

### Testing and documentation for Numato Opsis

The [Numato Opsis](https://hdmi2usb.tv/numato-opsis/) is a HDMI2USB
board that can be used to mix, capture and stream video from multiple
sources.

We need to test and document simple, yet reliable ways of using the
Numato Opsis to (primarily) record and stream free software events and
conferences. This will take the guesswork and complexity out of using
the Opsis board and it will become a default way to do such recording
and streaming.

----

### Rock64 u-boot network boot

The Rock64 SBC from Pine64 has a SPI flash which runs u-boot. This is a
unique feature of this board and because of this we can get it run in a
diskless manner and boot off the network.

Test, package, document and release a reliable method to boot the rock64
off the network.

----

### vim-arduino IDE

Build a vim plugin to enable vim to act as an Arduino IDE to program
microcontrollers.

----

### vim-micropython IDE

Build a vim plugin to enable vim to act as a micropython IDE for rapid
development.

----

### Documentation for PADI

PADI is an inexpensive wireless microcontroller from Pine64. It can run
FreeRTOS among other firmware.

Write documentation and examples on how to use PADI for common tasks in
place of other wireless microcontrollers.

----

### PADI with relay + RGB LED + MQTT client support

Use the PADI microcontroller to build a wifi power switch.

----

### FreeRTOS + micropython packaging

Package a custom distribution of FreeRTOS with micropython for various
microcontrollers.

----

### FreeRTOS + esp32

Package a toolchain and development environment to run FreeRTOS on the
ESP32 microcontroller.

----

### Document proprietary software in each SBC OS distribution

The operating system images of almost all single-board computers contain
proprietary software. Study the OS images of the Raspberry Pi, Orange
Pi, Odroid, Rock64 and Nano Pi boards to document which parts of these
images are proprietary software.

----

## Application Software & Solutions

### Webinar demo and documentation using openmeetings

Evaluate if it is possible to use Apache OpenMeetings for Webinars. This
will ensure that people don't have to use proprietary software for
running their webinars.

----

### Self-hosted video streaming

How do we stream a talk or lecture to the Internet using commodity
hardware? Build, document and package a self-hosted solution for doing
that.

----

### Jitsi Meet with login and no public registration

Jitsi Meet is a very useful free software tool for video conferencing
and desktop sharing. However, the default way it is packaged is a "demo"
and it allows anyone to use it publicly.

We need to build a wrapper application around Jitsi Meet so that it can
be self-hosted easily and used for video conferencing and desktop
sharing securely and privately.

----

## Telecom & VoIP

### Container distribution for compiling FreePBX dependencies

Compiling and getting FreePBX to run can be very frustrating because it
not only does it have complex (and many times, undocumented)
dependencies but also multiple steps that have to be executed carefully.

By building a container distribution for FreePBX, we can compile
wanpipe, freetdm, dahdi and freepbx in a simple and reproducible manner.

----

## Desktop Applications

### Basic web-browser using Gecko / Quantum

It should be possible to use the Firefox engine to build mini
web-browsers. This project will explain, document and automate this
process of build Gecko / Quantum based web-browsers.

----

### Electron-like desktop apps using Gecko / Quantum

Similarly, desktop applications which are browser-based should NOT only be
powered by Webkit or chromium. We should be able to build such
frameworks and application using Gecko and Quantum as well.

----

## Mobile Applications

### Mobile application for OpenWRT

Build a free software mobile application for Free-Android that can be
used to control an OpenWRT device over RPC.

----

### Mobile application for OpenHAB & home-assistant

While both OpenHAB and Home Assistant have very easy-to-use and free
software mobile applications, it would be good to build a custom
application which exposes a limited set of features and makes these
systems more usable.

----

### Mobile application for MQTT native

Build a mobile application that can natively talk to a MQTT server for
managing a self-hosted IoT installation.

----

## System Software

### DNSSEC with tinydns

Build documentation and package software to get tinydns to work with
DNSSEC.

----

### Git Push-based tinydns management

Build a text-based database format to version control DNS records over
git and publish them via tinydns.

----

### Extend tinydns.in management app to latest Rails and REST API

We have a rather old Rails application to manage DNS records for
tinydns. It should be re-written using the latest release of Rails and
so that it also exposes a REST API 

----

### Test out, package and document dovecot full text search (fts)

Dovecot is an IMAP server that can also act as a deliver agent among
other things. In conjugation with a search engine, it can index a
mailbox and enable full text search for it.

Build, document and package the full text search capabilities of
Dovecot.

----

### Integrate, document and package Kerberos with OpenLDAP

Integrate, document and package Kerberos so that it can be used along
with Append for single sign-on in a GNU/Linux network.
