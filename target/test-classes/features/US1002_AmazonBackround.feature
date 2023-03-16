Feature: US1002 Kullanici Backround kullarak Amazon sayfasinda arama yapar

  Background:// her senario da kullanilan ortak yazisi burda ortak hale getirdi
    Given kullanici amazon anasayfaya gider

  Scenario: TC01 Kullanici Amazonda Nutella aratir
    Then arama kutusuna Nutella yazar ve enter tusuna basar
    And arama sonuclarinin Nutella icerdigini test eder
    And sayfayi kapatir

  Scenario: TC02 Kullanici Amazonda Java aratir
    When arama kutusuna Java yazar ve enter tusuna basar
    Then arama sonuclarinin Java icerdigini test eder
    And  sayfayi kapatir

  Scenario: TC03 Kullanici Amazonda Apple aratir
    When arama kutusuna Apple yazar ve enter tusuna basar
    Then arama sonuclarinin Apple icerdigini test eder
    And  sayfayi kapatir
