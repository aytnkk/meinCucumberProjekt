Feature: US1009 Herokuapp omplicitly wait
@wip
  Scenario: TC13 kullanici "herokuUrl" anasayfaya gider

    Given kullanici "herokuUrl" anasayfaya gider
    Then AddElement butonuna basar
    And Delete butonu gorunur oluncaya kadar bekler
    Then Delete butonunun gorunur oldugunu test eder
    Then Delete butonuna basarak butonu siler
    Then Delete butonunun gorunmedigini test eder



