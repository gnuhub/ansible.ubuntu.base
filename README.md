[![Build Status](http://home.gnuhub.com:8080/buildStatus/icon?job=ansible.ubuntu.base.build)](http://home.gnuhub.com:8080/job/ansible.ubuntu.base.build/)

why
=====

```
In order to use ansible to install and config the development environments
As a developer using ansible
I want to build some development environments for myself
```
how
=======
#### ci
```
export BUILD_NUMBER=NUMBER
export vagrant_destroy=true|false
export vagrant_package=true|false
./ci
```

#### install sc2
```
./sc2.build
```
#### dev
```
./build
```
