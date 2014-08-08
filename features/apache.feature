Feature: apache

  In order to use apache to privide web service
  As a developer using apache
  I want to install and config apache

  Scenario: install
    When I run `apache2 -V`
    Then the output should contain:
    """
    Server version: Apache/2.2
    """
  Scenario: mod_auth_openid
    When I run `apache2ctl -M`
    Then the output should contain:
    """
    authopenid_module
    """
  Scenario: sites-available openid
    When I run `cat /etc/apache2/sites-available/openid`
    Then the output should contain:
    """
    OpenID
    """
  Scenario: sites-enabled openid
    When I run `cat /etc/apache2/sites-enabled/openid`
    Then the output should contain:
    """
    OpenID
    """
  Scenario: openid dir exists
    * a directory named "/var/openid" should exist

  Scenario: listen port 81 for openid
    When I run `cat /etc/apache2/ports.conf`
    Then the output should contain:
    """
    Listen 81
    """

