package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import support.AlexaElementLib;
import support.AlexaHelper;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;

public class AleksandraStepDefs {
    int userId;
    String activationCode;

    @Then("Person type {string} into {string}")
    public void personTypeInto(String text, String elementNameAlexa) {
        getDriver().findElement(By.xpath(AlexaElementLib.byName(elementNameAlexa))).sendKeys(text);
    }

    @Then("Person click on {string}")
    public void personClickOn(String elementNameAlexa) {
        getDriver().findElement(By.xpath(AlexaElementLib.byName(elementNameAlexa))).click();
    }

// Registration and Activation of an user:

    @And("I retrieve activation code info for email {string}")
    public void iRetrieveActivationCodeInfoForEmail(String email) throws SQLException {
        String result = AlexaHelper.getAccessToken(email);
        String[] part = result.split(";");
        userId = Integer.parseInt(part[0]);
        activationCode = part[1];
        System.out.println(result);
    }

    @And("I activate mine user")
    public void iActivateMineUser() throws IOException {
        AlexaHelper.activateUser(userId, activationCode);
    }

    //    For scenario-alexa01
    @Then("Person waits for element {string} to be presented")
    public void personWaitsForElementToBePresented(String elementNameAlexa) {
        getDriver().findElement(By.xpath(AlexaElementLib.byName(elementNameAlexa))).getTagName();
    }

    @And("Person move {int} step {string} at {string}")
    public void personMoveStepAt(int numberOfSteps, String direction, String elementNameAlexa) {
        for (int i = 0; i<numberOfSteps; i++) {
            if (direction.equals("right")) {
                getDriver().findElement(By.xpath(AlexaElementLib.byName(elementNameAlexa))).sendKeys(Keys.ARROW_RIGHT);
            }
            if (direction.equals("left")) {
                getDriver().findElement(By.xpath(AlexaElementLib.byName(elementNameAlexa))).sendKeys(Keys.ARROW_LEFT);
            } else {
                System.out.println("Error: Unknown direction for slider");
            }
        }
    }

}
