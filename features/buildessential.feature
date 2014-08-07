Feature: buildessential
  In order to build gem native extension
  As a developer
  I want to install build essential

  Scenario:  make
    When I run `make --version`
    Then the output should contain:
    """
    GNU Make
    """
