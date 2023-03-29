package definitions;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import support.HrytsenkoHelper;
import support.hrytsenkoXpath;
import java.util.Random;
import java.io.IOException;
import java.sql.SQLException;
import com.github.javafaker.Faker;

import static org.assertj.core.api.Assertions.assertThat;
import static support.TestContext.getDriver;

public class HrytsenkoStepDefs {

    int userId;
    String activationCode;
    private String randomEmail;
    private final Faker faker = new Faker();
    private String password;

    @Given("User open url {string}")
    public void userOpenUrl(String arg0) {
        getDriver().get(hrytsenkoXpath.AskUrl);
    }

    @Given("User open reg url {string}")
    public void userOpenRegUrl(String arg0) {
        getDriver().get(hrytsenkoXpath.AskRegUrl);
    }

    @And("User type {string} into {string}")
    public void userTypeInto(String text, String XpathName) {
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(text);
    }

    @And("User click {string}")
    public void userClickSubmitButton(String XpathName) {
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).click();
    }



    @And("User move slider {int} step {string} for xpath {string}")
    public void iMoveSliderStepRightForXpath(int numberOfSteps,String direction, String sliderXpath) {
        for (int i = 0; i<numberOfSteps; i++) {
            if (direction.equals("right")) {
                getDriver().findElement(By.xpath(sliderXpath)).sendKeys(Keys.ARROW_RIGHT);
            }
            if (direction.equals("left")) {
                getDriver().findElement(By.xpath(sliderXpath)).sendKeys(Keys.ARROW_LEFT);
            } else {
                System.out.println("Error: Unknown direction for slider");
            }
        }
    }

    @And("User type a random first name into {string}")
    public void userTypeRandomFirstNameInto(String XpathName) {
        String firstName = faker.name().firstName();
        System.out.println("Generated First Name: " + firstName);
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(firstName);
    }

    @And("User type a random last name into {string}")
    public void userTypeRandomLastNameInto(String XpathName) {
        String lastName = faker.name().lastName();
        System.out.println("Generated Last Name: " + lastName);
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(lastName);
    }

    @And("User type a random email into {string}")
    public void userTypeRandomEmailInto(String XpathName) {
        Random rand = new Random();
        int randomNum = rand.nextInt(1000); // generate a random number between 0 and 999
        randomEmail = "user" + randomNum + "@example.com"; // create a base email address and append the random number
        System.out.println("Generated Email: " + randomEmail);
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(randomEmail);
    }

    public String getRandomEmail() {
        return randomEmail;
    }

    @And("User type group code {string} into {string}")
    public void userTypeRandomGroupCodeInto(String text, String XpathName) {

//        String groupCode = generateRandomString(6).toUpperCase(); // generate a random string of length 6 and convert to uppercase
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(text);
    }

    @And("User click on submit button {string}")
    public void userClickSubmitRegButton(String XpathName) {
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).click();
    }

    @And("User retrieve activation code for email")
    public void iRetrieveActivationCodeForEmail() throws SQLException {
        String result = HrytsenkoHelper.getAccessToken(randomEmail);
        String email = getRandomEmail();
        String[] part = result.split(";");
        userId = Integer.parseInt(part[0]);
        activationCode = part[1];
        System.out.println(result);
    }

    @And("User activate user")
    public void iActivateUser() throws IOException {
        String randomEmail = getRandomEmail();
        HrytsenkoHelper.activateUser(userId, activationCode);
    }

//    private String generateRandomString(int length) {
//        String chars = "ABC123";
//        StringBuilder sb = new StringBuilder();
//        Random rand = new Random();
//        for (int i = 0; i < length; i++) {
//            int index = rand.nextInt(chars.length());
//            sb.append(chars.charAt(index));
//        }
//        return sb.toString();
//    }


    @And("User type a random password into {string}")
    public void userTypeRandomPasswordInto(String XpathName) {
        String password = faker.internet().password(8, 16);
        System.out.println("Generated Password: " + password);
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(password);
    }

    private String getPassword() {
        return password;
    }

    @And("User type the same random password into {string}")
    public void userTypeSameRandomPasswordInto(String XpathName) {
        String password = getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor("PasswordRegField"))).getAttribute("value");
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(password);
    }

    @Then("error message {string} displayed")
    public void errorMessageDisplayed(String XpathName) {
        assertThat(getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).isDisplayed()).isTrue();
    }

    @And("User type email into {string}")
    public void userTypeEmailInto(String XpathName) {
        String email = getRandomEmail();
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(randomEmail);
    }

    @And("User type password into {string}")
    public void userTypePasswordInto(String XpathName) {
        getDriver().findElement(By.xpath(hrytsenkoXpath.ElementFor(XpathName))).sendKeys(password);
    }
}
