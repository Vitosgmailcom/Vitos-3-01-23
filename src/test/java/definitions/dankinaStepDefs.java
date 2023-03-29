package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import support.dankinaElementLib;
import support.dankinaHelper;

import java.io.File;
import java.io.IOException;
import java.sql.SQLException;
import java.util.Date;

import static support.TestContext.getDriver;

public class dankinaStepDefs {
    int userId;
    String activationCode;


    @Given("Tat open url {string}")
    public void tatOpenUrl(String arg0) {
        getDriver().get(dankinaElementLib.StagingEnvWeb);
    }

    @Then("Tat type {string} into {string}")
    public void tatTypeInto(String text, String elementName) {
        getDriver().findElement(By.xpath(dankinaElementLib.byName(elementName))).sendKeys(text);
    }

    @Then("Tat click on {string}")
    public void artClickOn(String elementName) {
        getDriver().findElement(By.xpath(dankinaElementLib.byName(elementName))).click();
    }
    @And("I retrieve activation info for email {string}")
    public void iRetrieveActivationInfoForEmail(String email) throws SQLException {
        String result = dankinaHelper.getAccessToken(email);
        String[] part = result.split(";");
        userId = Integer.parseInt(part[0]);
        activationCode = part[1];
        System.out.println(result);
    }

    @Then("I activate user")
    public void iActivateUser() throws IOException {
        dankinaHelper.activateUser(userId, activationCode);
    }

    @Then("Tat scroll on {string}")
    public void tatScrollOn(String elementName) {
        getDriver().findElement(By.xpath(dankinaElementLib.byName(elementName))).click();
    }
    @Then("^Tat take screenshot$")
    public void iTakeScreenshot() throws Exception {
        TakesScreenshot screenshotTaker = (TakesScreenshot) getDriver();
        File screenshot = screenshotTaker.getScreenshotAs(OutputType.FILE);
        FileUtils.copyFile(screenshot, new File("target/cucumber/screenshot " + System.currentTimeMillis() + ".png"));
    }



}
