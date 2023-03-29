package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import support.XpathirinaDLib;


import java.io.File;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class irinaDStepDefs {
    @Given("IrinaD open {string}")
    public void irinadOpen(String url) {
        String openUrl;

        if ("REG_URL".equals(url)) {
            openUrl = XpathirinaDLib.REG_URL;
        } else if ("LOG_URL".equals(url)) {
            openUrl = XpathirinaDLib.LOG_URL;
        } else {
            throw new IllegalArgumentException();
        }

        getDriver().get(openUrl);
    }

    

    @Then("IrinaD type {string} in the field {string}")
    public void irinadTypeInTheField(String text, String xpathname) {
        getDriver().findElement(By.xpath(XpathirinaDLib.ElementForIrinaD(xpathname))).sendKeys(text);
    }

    @Then("IrinaD click on the {string}")
    public void irinadClickOnThe(String xpath) {
        getDriver().findElement(By.xpath(XpathirinaDLib.ElementForIrinaD(xpath))).click();
    }

    @Then("IrinaD clear element with xpath {string}")
    public void irinadClearElementWithXpath(String xpath) {
        getDriver().findElement(By.xpath(XpathirinaDLib.ElementForIrinaD(xpath))).clear();
    }


    @And("IrinaD waite for {int} sec")
    public void irinadWaiteForSec(int sec) throws Exception{
        Thread.sleep(sec * 1000);
    }


    @Then("^message \"([^\"]*)\" should be present$")
    public void elementWithXpathShouldBePresent(String xpath) {
        assertThat(getDriver().findElements(By.xpath(XpathirinaDLib.ElementForIrinaD(xpath)))).hasSize(1);
    }

    @Then ("^IrinaD take screenshot$")
    public void iTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + System.currentTimeMillis() + ".png"));
    }
}

