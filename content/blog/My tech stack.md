+++
title = "My tech stack"
date = "2025-11-26T03:47:18-06:00"

#
# description is optional
#
# description = "An optional description for SEO. If not provided, an automatically created summary will be used."
draft = true
tags = ["tech"]
+++

These are the tools and services I use to run my hobby projects and  personal infrastructure.

{{< table_of_contents >}}

## Networking

### Routing and firewalling - MikroTik

After several years of working for a small ISP, I grew fond of MikroTik's efficient low-cost routers.  I like that the featureset is nearly identical across all modes: the nerd knobs on multi-thousand dollar routers are available on $40 routers as well.

### End-user WiFi - TP-Link Omada

Similar enough to Ubiquiti's Unifi line, but slightly lower cost, and (in my experience at least) a more stable controller interface.

### Long-range wireless backhaul - Ubiquiti Airmax

I operate a network across a family farm, and use Ubiquiti 5AC equipment mostly; it's slightly older, so easy to obtain secondhand for cheap, and meets my performance needs.

### Overlay network and site-to-site VPN - Tailscale

Tailscale makes it dead-simple to connect to hosts/VMs/containers I run at multiple sites.  I use it to route between subnets at separate sites too.  The built-in ACL features are nice; most endpoints in my network get a tag and limited access.

## Service hosting

### Virtualization - Proxmox

Maybe it's simply that I began my home hosting journey on Proxmox years ago, but I find it gets out of my way and just lets me run things.  Despite being comfortable in the CLI, I like having a web interface to remind me of all the knobs and settings I may have not used lately, and Proxmox has done well here.

I use Alpine Linux VMs to run services when I can, and Debian when Alpine gives me issues.  Most things are containerized on top of that.

### Containerization and orchestration - Docker and Docker Compose

I use Kubernetes at work, but at home, I keep things simple.  I have a handful of hobby projects (mostly Python), and when they get deployed, it's nearly always in a Docker container.

### VPS - Vultr

Vultr piqued my interest when some college friends and I needed decent single-thread performance to host a Minecraft server ages ago, and they sealed the deal with their BGP routing table feed feature I used in a network engineering role years later.  I don't run much here, but when I need a host and a public IP address, they're usually who I go to.

## Monitoring

I've gone through multiple iterations of monitoring stacks for my homelab/personal infrastructure over the years, but the reality is, I have limited time to work on things, and lost motivation to tie together a robust stack.  And so, I've landed on a very simple deployment of...

### Healthchecks - Gatus

Gatus is a simple Go-based monitoring tool with support for up/down checks against a variety of endpoints.  I can check ICMP status of network equipment and HTTP reachability of my internal and public services, for example.  There's an experimental remote instance feature now too, so I can deploy remote Gatus instances to reach hosts that may not be directly available through a VPN, for example.

### Log collection - To do

This is something I feel strongly enough that I need to do that it gets a spot on this list, but it's not something I've implemented yet.  Logs get checked on the thing that produces them.

If you have a recommendation, please write me.

## Services

### Home automation - Home Assistant

After experimenting with some "simpler" home automation platforms when I first became interested (e.g. Samsung SmartThings), I realized that Home Assistant simply got out of my way and let me connect and build things.  Local-first or local-only operation was important to me, as was integration with many different devices, and HA certainly delivers on both.

Most of my use cases involve automating lights, HVAC, and tracking electricity usage.

### Document management - Paperless-ngx

This is a relatively new addition to my toolkit, but I've really enjoyed it.  Paperless is a web-based document management tool that organizes docs as PDFs with tags, metadata, OCR, and full-text search.  There are some related LLM-based tools that can work with Paperless to add even more functionality; someday I'll try these as well.

### Media management - Jellyfin

I find something very satisfying about curating my own media collection and being able to share it with the family.  Jellyfin manages our movies, shows, and music.  There is a client app available for most platforms, and things mostly 'just work'.

## Workstation

### Terminal - Ghostty

Ghostty is a slick new terminal that Hashicorp founder <name> has been working on.  I'm not very particular about my terminal client, but I tried Ghostty and liked it, so I've stuck with it.  I'm using macOS or Linux most of the time, and its available on both.

### Notes - Obsidian

I've bounced around and off of note taking tools for years.  Obsidian isn't perfect, but it delivers on:

- Markdown-based notes
- with tags and links
- and iOS syncing (using the community LiveSync plugin)
- for free or cheap (free in this case).

### Code editor - Helix and VSCode

Helix is a great terminal-based editor with good keybindings and language integration features out-of-the-box.  Sometimes I like to have a GUI to work on larger or more complicated projects though, and it's hard to ignore the utility and flexibility of Visual Studio Code.

With both tools, I've been using the intentionally simplistic [Alabaster theme](https://github.com/tonsky/vscode-theme-alabaster) lately (or a variation thereof) to provide more practical syntax highlighting.
