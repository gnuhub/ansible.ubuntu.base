Feature: java
  In order to use java
  As a developer using java
  I want to install and config java and tools for java

  Scenario:  jdk installed
    When I run `which javac`
    Then the exit status should be 0
