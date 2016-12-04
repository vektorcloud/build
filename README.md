# Build
[![Circle CI](https://circleci.com/gh/vektorcloud/build.svg?style=svg)](https://circleci.com/gh/vektorcloud/build)

Alpine build environment for VektorCloud.

Ideally software can be compiled with language-specific 
containers like [go](https://github.com/vektorcloud/go) or
[python](https://github.com/vektorcloud/python3) but sometimes
the compile-time requirements of an application are too complex.
These images include various dependencies for compiling 
complicated software like [Apache Mesos](https://github.com/vektorcloud/mesos).
