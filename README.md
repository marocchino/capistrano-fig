Capistrano - Fig
================

## Overview

A capistrano extension used to deploy Docker containers to a remote host using Fig.

* http://capistranorb.com
* http://www.fig.sh
* https://docker.com

The steps this plugins tasks on deploy is as follows:

* Kill the previous container running in the old "releases" directory.
* Build a new frest container under our new repository (if no changes to the Dockerfile it will be very quick).
* Start the new container which should run instructions on setting up and/or migrating the application.

The following borrows heavily from approach used on the following blog:

https://blog.docker.com/2014/08/orchestrating-docker-containers-in-production-using-fig

Note: We assume you already know how to setup Capistrano on a project and have deployed with it before.

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
