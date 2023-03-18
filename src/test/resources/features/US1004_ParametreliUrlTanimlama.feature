Feature: US1004 kullanci parametre olarak girdigi Url'ye gider

  Scenario: TC08 Kullanici url'i parametre olarak girebilmeli

    Given kullanici "amazonUrl" anasayfaya gider
    Then "amazonUrl" sayfasina gittigini test eder
    And sayfayi kapatir