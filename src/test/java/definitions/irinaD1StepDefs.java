package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Dimension;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import support.Helper;
import support.IrinaD1xpathLib;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;
public class irinaD1StepDefs {
    int userId;
    String activationCode;

    @Given("Kira open page {string}")
    public void kiraOpenURLOfTeachersSAccount(String url) {
        String openUrl;
        if ("REG_URL".equals(url)) {
            openUrl = IrinaD1xpathLib.REG_URL;
        } else if ("LOG_URL".equals(url)) {
            openUrl = IrinaD1xpathLib.LOG_URL;
        } else {
            throw new IllegalArgumentException();
        }
        getDriver().get(openUrl);
    }

    @Then("Kira is typing {string} into {string}")
    public void kiraIsTypingInto(String text, String xpathname) {
        getDriver().findElement(By.xpath(IrinaD1xpathLib.getXPath(xpathname))).sendKeys(text);
    }

    @And("Kira waits for {int} sec")
    public void kiraWaitsForSec(int sec) throws Exception {
        Thread.sleep(sec * 1000);
    }

    @Then("Kira click on element with xpath {string}")
    public void kiraClickOnElementWithXpath(String xpathname) {
        getDriver().findElement(By.xpath(IrinaD1xpathLib.getXPath(xpathname))).click();
    }

    @And("Kira scroll to the element with xpath {string} with offset {int}")
    public void kiraScrollToTheElementWithXpathWithOffset(String xpath, int offset) throws Exception {
        WebElement element = getDriver().findElement(By.xpath(IrinaD1xpathLib.getXPath(xpath)));
        JavascriptExecutor executor = (JavascriptExecutor) getDriver();
        executor.executeScript("arguments[0].scrollIntoView(false);", element);
        executor.executeScript("window.scrollBy(0, " + offset + ");", element);
        Thread.sleep(500);
    }


    @Then("Then I type {string} into element with xpath {string}")
    public void thenITypeIntoElementWithXpath(String text, String xpathname) {
        getDriver().findElement(By.xpath(IrinaD1xpathLib.getXPath(xpathname))).sendKeys(text);
    }


    @And("Kira retrieves activation code for {string}")
    public void kiraRetrievesActivationCodeForEmail(String email) throws SQLException {
        String result = Helper.getAccessToken(email);
        String[] part = result.split(";");
        userId = Integer.parseInt(part[0]);
        activationCode = part[1];
        System.out.println(result);

    }

    @And("Kira activates user")
    public void kiraActivatesUser() throws IOException {
        Helper.activateUser(userId, activationCode);
    }


    @Then("Kira resize window to {int} and {int}")
    public void kiraResizeWindowToNumberAndNumber (int width, int height) {
            Dimension dimension = new Dimension(width, height);
            getDriver().manage().window().setSize(dimension);
    }
 }
