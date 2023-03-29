package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import support.IBElementLib;

import static support.TestContext.getDriver;

public class IBStepDefs {
    @Given("IB open url {string}")
    public void ibOpenUrl(String arg0) {
        getDriver().get(IBElementLib.StagingEnvWeb);
    }


    @And("IB type {string} into {string}")
    public void ibTypeInto(String text, String elementName) {
        getDriver().findElement(By.xpath(IBElementLib.byName(elementName))).sendKeys(text);
    }

    @And("IB wait for {string} sec")
    public void ibWaitForSec(String sec) {
    }

    @Then("IB click on {string}")
    public void ibClickOn(String elementName) {
        getDriver().findElement(By.xpath(IBElementLib.byName(elementName))).click();
    }

    @Then("^Inna wait for (\\d+) sec$")
    public void iWaitForSec( int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("change name back")
    public void changeNameBack() {
        getDriver().findElement(By.xpath("//span[contains(text(), 'Change Your Name')]")).click();
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).clear();
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys("InaBina");
        getDriver().findElement(By.xpath("//button[@mat-raised-button][@type='button']")).click();
    }
}


