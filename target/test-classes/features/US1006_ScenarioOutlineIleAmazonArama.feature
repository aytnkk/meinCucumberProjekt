@Regression
Feature: US1006 Kullanici Scenario outline ile birden fazla kelime aratir
@SS
  Scenario Outline: TC10 Amazon coklu urun testi

    Given kullanici "amazonUrl" anasayfaya gider
    Then amazonda "<kelimeler>" icin arama yapar
    And sonuclarin "<kelimeler>" icerdigini test eder
    And sayfayi kapatir

    Examples:
    |kelimeler |
    |Nutella   |
    |Java      |
    |samsung   |
    |Apple     |
    |ayten     |