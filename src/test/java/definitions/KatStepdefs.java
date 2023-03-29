package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import org.openqa.selenium.By;
import support.KatLib;
import support.hrytsenkoXpath;

import static support.TestContext.getDriver;

public class KatStepdefs {

    @Given("Kat open url {string}")
    public void katOpenUrl(String arg0) {
        getDriver().get(KatLib.StagingWeb);
    }

    @And("Kat type {string} into {string}")
    public void katTypeInto(String text, String XpathName) {
        getDriver().findElement(By.xpath(KatLib.ElementFor(XpathName))).sendKeys(text);
    }

    @And("Kat click on element {string}")
    public void katClickOnElement(String xpathName) {
        getDriver().findElement(By.xpath(KatLib.ElementFor(xpathName))).click();
    }
}
