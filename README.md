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

#### dev
```
branch dev
./build
```
#### dev ci
```
ci job ansible.ubuntu.base.build
export BUILD_NUMBER=NUMBER
export vagrant_destroy=true|false
export vagrant_package=true|false
./ci
```

#### sc2 sc4 auto-deploy
```
branch sc2_sc4_deploy
ci job sc2.build
```


model
=============

```
jenkins.host
jenkins.host.install
jenkins.node
jenkins.node.install
```