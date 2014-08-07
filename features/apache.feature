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
    mod_auth_openid
    """