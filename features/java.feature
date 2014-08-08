Feature: java
  In order to use java
  As a developer using java
  I want to install and config java and tools for java

  Scenario:  jdk installed
    When I run `javac -version`
    Then the output should contain:
    """
    javac 1.7
    """
  Scenario:  ant installed
    When I run `ant -version`
    Then the output should contain:
    """
    Apache Ant(TM) version 1.9
    """
