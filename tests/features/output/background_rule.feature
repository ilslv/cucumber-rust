Feature: output

  Background:
    Given foo is 0

  Rule: output

    Scenario: output
      Given foo is 1
      When foo is 2
      Then foo is 3
