Capistrano - Fig
================

## Overview

A capistrano extension used to deploy Docker containers to a remote host using Fig.

* http://capistranorb.com
* http://www.fig.sh
* https://docker.com

https://blog.docker.com/2014/08/orchestrating-docker-containers-in-production-using-fig

Note: We assume you already know how to setup Capistrano on a project and have deployed with it before.

## Diagram

![Flow](/docs/diagram.png "Flow")

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

## Example

An example of this in action can be found here (Im using this for the new interation of my portfolio site):

https://github.com/nickschuch/portfolio-silex
