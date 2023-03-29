package definitions;

import cucumber.api.java.en.Then;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.mustache.Value;
import support.Helper;
import org.openqa.selenium.support.ui.Select;
import support.VitLib;

import java.io.IOException;
import java.sql.SQLException;

import static support.TestContext.getDriver;



public class VitalySteps {

    int user_id;
    String activation_Code;
    String newemail;


    @Then("I login as a Teacher {string} and {string}")
    public void iLoginAsATeacher(String email_elem, String passw_elem) {
        getDriver().get("http://ask-stage.portnov.com/#/login");
        WebElement element = getDriver().findElement(By.xpath(VitLib.myXpass(email_elem)));
        if (element.isDisplayed()) {
            getDriver().findElement(By.xpath(VitLib.myXpass(email_elem)));
            getDriver().findElement(By.xpath(VitLib.myXpass(email_elem))).sendKeys("vitaly.kamynin@gmail.com");
            getDriver().findElement(By.xpath(VitLib.myXpass(passw_elem))).sendKeys("Fall2022!");
            getDriver().findElement(By.xpath("//*[text()='Sign In']")).click();
        }
        else {
            System.out.println("The element is not displayed");
        }


    }
    // Registration and Activation of an user:
    @Then("I create a new Student with email {string} and password {string}")
    public void iCreateANewStudent(String email, String password) throws SQLException, InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/registration");
        Thread.sleep( 1000);
        getDriver().findElement(By.xpath("//input[@id='mat-input-0']")).sendKeys("vk");
        getDriver().findElement(By.xpath("//input[@id='mat-input-1']")).sendKeys("vk");
        WebElement email_input = getDriver().findElement(By.xpath("//input[@id='mat-input-2']"));
        email_input.sendKeys(email);
        newemail = email_input.getText();
        System.out.println(newemail);
        getDriver().findElement(By.xpath("//input[@id='mat-input-3']")).sendKeys("123");
        getDriver().findElement(By.xpath("//input[@id='mat-input-4']")).sendKeys(password);
        getDriver().findElement(By.xpath("//input[@id='mat-input-5']")).sendKeys(password);
        getDriver().findElement(By.xpath(" //span[contains(text(),'Register Me')]")).click();
        Thread.sleep( 5000);
        String element_1 = getDriver().findElement(By.xpath("//h4[contains(text(),'You have been Registered.')]")).getText();

        if (element_1.equals("You have been Registered.")){
            System.out.println(element_1);
            getDriver().findElement(By.xpath("//span[contains(text(),'Back to Login Page')]")).click();
            String result = Helper.getAccessToken(email);
            String[] part = result.split(";");
            user_id = Integer.parseInt(part[0]);
            activation_Code = part[1];
            System.out.println(result);


            try {
                Helper.activateUser(user_id, activation_Code);
            } catch (IOException e) {
                throw new RuntimeException(e);
            }

        }
        else {
            System.out.println("The element is not displayed");
        }

    }

    @Then("I create a new quiz")
    public void iCreateANewQuiz() throws InterruptedException {
        WebDriverWait wait = new WebDriverWait(getDriver(), 10, 200);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Quizzes')]")).click();
        wait.until(ExpectedConditions.visibilityOfElementLocated(By.xpath("//span[contains(text(),'Create New Quiz')]")));
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Quiz')]")).click();
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//input[@formcontrolname='name']")));
        getDriver().findElement(By.xpath("//input[@formcontrolname='name']")).sendKeys("quiz_name");
        Thread.sleep( 3000);
        // click on add question
        getDriver().findElement(By.xpath("//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav-content[1]/main[1]/ac-quiz-builder-page[1]/form[1]/div[1]/button[1]/span[1]")).click();
        // click on radio button
        Thread.sleep( 3000);
        getDriver().findElement(By.xpath("(//div[@class='mat-radio-container'])[1]")).click();
        Thread.sleep( 1000);
        // passing name of the quiz
        getDriver().findElement(By.xpath("(//*[@placeholder='Question *'])[1]")).click();
        getDriver().findElement(By.xpath("(//*[@placeholder='Question *'])[1]")).sendKeys("How old are you?");
        getDriver().findElement(By.xpath("(//button[@class='mat-raised-button mat-primary ng-star-inserted'])[2]")).click();
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h4[contains(text(),'List of Quizzes')]")));
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();

    }

    @Then("I Assign a quiz to a student")
    public void iAssignAQuizToAStudent() throws InterruptedException {
        WebDriverWait wait = new WebDriverWait(getDriver(), 10, 200);
        wait.until(ExpectedConditions.presenceOfElementLocated(By.xpath("//h5[contains(text(),'Assignments')]")));
        getDriver().findElement(By.xpath("//h5[contains(text(),'Assignments')]")).click();
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Create New Assignment')]")).click();
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//text()[contains(., 'VK_STUDENT_2')]/..")).click();
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//mat-select[@formcontrolname='quizId']")).click();
        getDriver().findElement(By.xpath("(//*[contains(text(), 'quiz_name')])[1]")).click();
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//span[contains(text(),'Give Assignment')]/..")).click();
        Thread.sleep(4000);
        getDriver().findElement(By.xpath("//h5[contains(text(),'Log Out')]")).click();

    }

    @Then("I login as a Student")
    public void iLoginAsAStudent() throws InterruptedException {
        getDriver().get("http://ask-stage.portnov.com/#/login");
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).isDisplayed();
        getDriver().findElement(By.xpath("//input[@placeholder='Email *']")).sendKeys(newemail);
        Thread.sleep(3000);

    }

}

