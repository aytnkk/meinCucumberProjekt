Feature: Google Arama Testi
@regression
  Background: ORTAK ADIMLAR
    Given Kullanici google sayfasina gider
    Then  Cokkies i google sayfasinda kabul eder

  Scenario: Kullanici google sitesinde dolar to euro karsilastirmasi yapabilmeli
    Then  Arama Kutusuna karsilastirma yapmak istedigi "dollar to euro" para birimlerini girer
    Then  Para birimlerinin karsilastirmasini alir
    Then  Verilen degerlerin 1 den kucuk oldugunu dogrular
    Then  Kullanici sayfayi kapatir

  Scenario: T108 istenilen karsilastirmayi yapabilmeli
    Then  Arama Kutusuna karsilastirma yapmak istedigi "Tl to Euro" para birimlerini girer
    Then  Para birimlerinin karsilastirmasini alir
    Then  Verilen degerlerin 2 den kucuk oldugunu dogrular
    Then  Kullanici sayfayi kapatir
  @ilk
  Scenario: Nevzat istenilen karsilastirmayi yapsin

    Then  Arama Kutusuna karsilastirma yapmak istedigi "Zloty to Tl" para birimlerini girer
    Then  Para birimlerinin karsilastirmasini alir
    Then Verilen degerlerin 4 den kucuk oldugunu dogrular
    Then  Kullanici sayfayi kapatir


  Scenario Outline: Mehmet istenilen karsilastirmayi yapsin

    Then  Arama Kutusuna karsilastirma yapmak istedigi "<istenilen karsilastirmalar>" para birimlerini girer
    Then  Para birimlerinin karsilastirmasini alir
    Then Verilen degerlerin 20 den kucuk oldugunu dogrular
    Then  Kullanici sayfayi kapatir

    Examples:
      | istenilen karsilastirmalar |
      | dollar to euro             |
      | Tl to euro                 |
      | Tl to zloty                |
      | dollar to tl               |

  @examples
  Scenario Outline: configration ile arama testi

    Then  Arama Kutusuna karsilastirma yapmak istedigi "<istenilen karsilastirma>" para birimlerini girer
    Then  Para birimlerinin karsilastirmasini alir
    Then Verilen degerlerin 21 den kucuk oldugunu dogrular
    Then  Kullanici sayfayi kapatir
    Examples:
      | istenilen karsilastirma |
      | aramaYapilacakBirim     |
      | aramaYapilacakBirim1    |
      | aramaYapilacakBirim2    |
      | aramaYapilacakBirim3    |