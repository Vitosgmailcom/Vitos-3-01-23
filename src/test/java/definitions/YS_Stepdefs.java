
package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import support.YSLib;
import support.Helper;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class YS_Stepdefs {
    int userId;
    String activationCode;

    @Then("YS type {string} into {string}")
    public void artTypeInto(String text, String elementName) {
        getDriver().findElement(By.xpath(YSLib.byName(elementName))).sendKeys(text);
    }



    @Then("YS click on {string}")
    public void artClickOn(String elementName) {
        getDriver().findElement(By.xpath(YSLib.byName(elementName))).click();
    }


    @And("YS retrieve activation info for email {string}")
    public void iRetrieveActivationInfoForEmail(String email) throws SQLException {
        String result = Helper.getAccessToken(email);
        String[] part = result.split(";");
        userId = Integer.parseInt(part[0]);
        activationCode = part[1];
        System.out.println(result);
    }

    @And("YS activate user")
    public void iActivateUser() throws IOException {
        Helper.activateUser(userId, activationCode);
    }

    @And("Ys click on element {string}")
    public void YSClickOn(String elementName) {
        getDriver().findElement(By.xpath(YSLib.byName(elementName))).click();
    }



    @And("YS move slider {int} step {string} for xpath {string}")
    public void iMoveSliderStepRightForXpath(int numberOfSteps,String direction, String sliderXpath) {

        for (int i=0; i<numberOfSteps; i++){
            if (direction.equals("right")){
                getDriver().findElement(By.xpath(sliderXpath)).sendKeys(Keys.ARROW_RIGHT);
            }
            if (direction.equals("left")){
                getDriver().findElement(By.xpath(sliderXpath)).sendKeys((Keys.ARROW_LEFT));
            } else {
                System.out.println("Unknown direction for slider");
            }

        }
    }




}