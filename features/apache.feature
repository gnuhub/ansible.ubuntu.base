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
  Scenario: openid permission
    TO FIX You don't have permission to access / on this server

    When I run `stat /var/openid`
    Then the output should contain:
    """
    root
    """

  Scenario: openid login page

    When I run `cat /var/openid/openid/index.html`
    Then the output should contain:
    """
    login.ubuntu.com
    """
  Scenario: test /var/openid/openid does not exist
    * a directory named "/var/openid/openid/" should exist

  Scenario: listen port 82 for w3next
    When I run `cat /etc/apache2/ports.conf`
    Then the output should contain:
    """
    Listen 82
    """
  Scenario: w3next permission
  TO FIX You don't have permission to access / on this server

    When I run `stat /var/w3next`
    Then the output should contain:
    """
    root
    """

  Scenario: w3next login page

    When I run `cat /var/w3next/login.html`
    Then the output should contain:
    """
    openid_identifier
    """
  Scenario: install perl_module

    In order to understand how mod_auth_openid works and follow the examples in Writing Apache Modules with Perl and C
    As a developer using apache
    I want to install perl_module
    When I run `apache2ctl -M`
    Then the output should contain:
    """
    perl_module
    """
  Scenario: enable perl_module

    When I run `a2enmod perl`
    Then the output should contain:
    """
    Module perl already enabled
    """