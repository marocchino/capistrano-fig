Capistrano - Fig
================

## Overview

A capistrano extension used to deploy Docker containers to a remote host using Fig.

* http://capistranorb.com
* http://www.fig.sh
* https://docker.com

The following borrows heavily from approach used on the following blog:

https://blog.docker.com/2014/08/orchestrating-docker-containers-in-production-using-fig

Note: We assume you already know how to setup Capistrano on a project and have deployed with it before.

## Diagram

![Flow](/docs/diagram.png "Flow")

## Roadmap

* Don't recompile containers on rollback.
* Find a smoother way to deploy instead of killing previous container (small amount of downtime).

## Installation

Install the gem:

```
gem install capistrano-fig
```

Add the following line to your Capfile:

```
require 'capistrano-fig'
```

ALL DONE!

## Demo

<a href="http://www.youtube.com/watch?feature=player_embedded&v=E91UEkN_D5w
" target="_blank"><img src="http://img.youtube.com/vi/E91UEkN_D5w/0.jpg" 
alt="Capistrano fig - Early prototype" width="240" height="180" border="10" /></a>

## Example

An example of this in action can be found here (Im using this for the new interation of my portfolio site):

https://github.com/nickschuch/portfolio-silex
