
Feature: US001 TEST


  @regression
  Scenario: Kulanici kendisine verilen testleri test eder

    Given Kullanici google sayfasina gider
    Then  Cokkies i google sayfasinda kabul eder
  @smoke

  Scenario: Kullanici ilgili sayfaya gider

    Given Kullanici Amazon sayfasina gider
  @nevzat

  Scenario:
    Given Kullanici qualityDemy sayfasina gider