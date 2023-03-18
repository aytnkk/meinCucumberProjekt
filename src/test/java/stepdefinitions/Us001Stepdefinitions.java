package stepdefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import org.junit.Assert;
import org.openqa.selenium.Keys;
import pages.Us001Page;
import utilities.Driver;

public class Us001Stepdefinitions {
    String equalsPara;
    Us001Page page=new Us001Page();
    @Given("Kullanici google sayfasina gider")
    public void kullanici_google_sayfasina_gider() {
        Driver.getDriver().get("https://www.google.com");
    }
    @Then("Cokkies i google sayfasinda kabul eder")
    public void cokkies_i_kabul_eder() {
    page.cokkies.click();
    }
    @Given("Kullanici Amazon sayfasina gider")
    public void kullanici_amazon_sayfasina_gider() {
        Driver.getDriver().get("https://www.amazon.com");
    }


    @Given("Kullanici qualityDemy sayfasina gider")
    public void kullaniciQualityDemySayfasinaGider() {
        Driver.getDriver().get("https://qualitydemy.com/");
    }


    @Then("Para birimlerinin karsilastirmasini alir")
    public void para_birimlerinin_karsilastirmasini_alir() {
      equalsPara=page.paraKarsilastirmasi.getText();
    }

    @Then("Arama Kutusuna karsilastirma yapmak istedigi {string} para birimlerini girer")
    public void aramaKutusunaKarsilastirmaYapmakIstedigiParaBirimleriniGirer(String karsilastirilacakPara) {
        page.googleSearchBox.sendKeys((karsilastirilacakPara)+Keys.ENTER);
    }

    @Then("Kullanici sayfayi kapatir")
    public void kullaniciSayfayiKapatir() {
        Driver.closeDriver();
    }

    @Then("Verilen degerlerin {int} den kucuk oldugunu dogrular")
    public void verilenDegerlerinDenKucukOldugunuDogrular(int verilenDeger) {
        Assert.assertTrue(Double.parseDouble(equalsPara)<verilenDeger);
    }
}