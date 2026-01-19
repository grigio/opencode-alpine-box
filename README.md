# opencode-alpine-box

A lightweight Alpine Linux container environment 160Mb for OpenCode development.

## Overview

This repository provides a minimal Alpine Linux environment configured for software development tasks with the OpenCode CLI tool.

## Environment

- **Platform**: Linux (Alpine)

The container is pre-configured with development tools and follows the guidelines specified in AGENTS.md.

## Development

When working in this environment:

- Use `apk` to install additional Alpine packages
- Use `sudo -u user` for creating files or running programs as a normal user
- Follow the coding style guidelines in AGENTS.md

## Getting Started

run `enter.sh` or something `docker run --rm -ti -v ./data:/data --workdir /data --entrypoint sh ghcr.io/anomalyco/opencode:latest`

run the initialization to fix permissions and create the id 1000 user.

```
...
Status: Downloaded newer image for ghcr.io/anomalyco/opencode:latest
/data # ./FIX-perms-user.sh 
(1/1) Installing sudo (1.9.17_p2-r0)
Executing busybox-1.37.0-r30.trigger
OK: 16.6 MiB in 21 packages
User 'user' created with ID 1000
Can install packages with: sudo apk add <package>
/data # sudo -u user opencode
```


