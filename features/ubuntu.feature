Feature: ubuntu

  In order to develop sth on a stable system
  As a developer using ubuntu
  I want to ensure it stable

  Scenario: release
    * the file "/etc/issue" should contain:
    """
    Ubuntu 12.04 LTS
    """
  Scenario: x86_64?
    When I run `uname --machine`
    Then the output should contain:
    """
    x86_64
    """
  Scenario: apt sources
    * the file "/etc/apt/sources.list" should contain:
    """
    mirrors.sohu.com
    """