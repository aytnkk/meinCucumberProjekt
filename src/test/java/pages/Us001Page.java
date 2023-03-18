package pages;

import org.apache.commons.compress.compressors.pack200.Pack200Utils;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import utilities.Driver;

public class Us001Page {

    public Us001Page(){
        PageFactory.initElements(Driver.getDriver(),this);
    }

     @FindBy(xpath = "//*[text()='Reject all']")
    public WebElement cokkies;

    @FindBy(xpath = "//input[@class='gLFyf']")
    public WebElement googleSearchBox;

    @FindBy(xpath = "//span[@class='DFlfde SwHCTb']")
    public WebElement paraKarsilastirmasi;
}