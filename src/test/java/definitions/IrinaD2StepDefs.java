package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import support.IrinaD2XpathLib;

import java.io.File;
import java.util.Iterator;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class IrinaD2StepDefs {
    @Given("^Ben opens page \"([^\"]*)\"$")
    public void benOpenPage(String pinUrl) {
        getDriver().get(IrinaD2XpathLib.PIN_URL);
    }

    @Then("^Ben should see page title as \"([^\"]*)\"$")
    public void benShouldSeePageTitleAs (String title) {
        assertThat(getDriver().getTitle()).isEqualTo(title);

    }

    @Then("^Ben resize window to (\\d+) and (\\d+)$")
    public void benResizeWindowToAnd(int width, int height) {
            Dimension dimension = new Dimension(width, height);
            getDriver().manage().window().setSize(dimension);
    }

    @Then("^Ben waits for (\\d+) sec$")
    public void benWaitsForSec(int sec) throws Exception {
            Thread.sleep(sec * 1000);
    }

    @And("^Ben takes screenshot$")
    public void benTakeScreenshot() throws Exception {
            TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
            File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
            FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + System.currentTimeMillis() + ".png"));
        }

    @Then("^Ben clicks on element with xpath \"([^\"]*)\"$")
    public void benClicksOnElementWithXpath(String xpath) {
            getDriver().findElement(By.xpath(IrinaD2XpathLib.getXpath(xpath))).click();
        }

    @Then("^Ben switch to new window$")
    public void benSwichedNewWindow() {
            Iterator<String> iterator = getDriver().getWindowHandles().iterator();
            String newWindow = iterator.next();
            while(iterator.hasNext()) {
                newWindow = iterator.next();
            }
            getDriver().switchTo().window(newWindow);
        }
    }



