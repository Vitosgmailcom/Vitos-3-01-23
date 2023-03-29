package support;

public class AlexaElementLib {
    public static String byName(String elementNameAlexa) {

//  Beginning of askscenario-alexa01 Create Textual Quiz

        if (elementNameAlexa.equals("Quizzes")) {
            return "//h5[contains(text(),'Quizzes')]";
        }
        if (elementNameAlexa.equals("CreateNewQuiz")) {
            return "//span[contains(text(),'Create New Quiz')]";
        }
        if (elementNameAlexa.equals("QuizTitle")) {
            return "//input[@formcontrolname='name']";
        }
        if (elementNameAlexa.equals("AddQuestion")) {
            return "//mat-icon[contains(text(),'add_circle')]";
        }
        if (elementNameAlexa.equals("SelectTextual1")) {
            return "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[1]";
        }
        if (elementNameAlexa.equals("SelectTextual2")) {
            return "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[1]";
        }
        if (elementNameAlexa.equals("SelectTextual3")) {
            return "//mat-panel-title[contains(text(), 'Q3')]/../../..//mat-radio-button[1]";
        }
        if (elementNameAlexa.equals("TextualQuestion1")) {
            return "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']";
        }
        if (elementNameAlexa.equals("TextualQuestion2")) {
            return "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='question']";
        }
        if (elementNameAlexa.equals("TextualQuestion3")) {
            return "//mat-panel-title[contains(text(), 'Q3')]/../../..//textarea[@formcontrolname='question']";
        }
        if (elementNameAlexa.equals("SaveButton")) {
            return "//span[contains(text(), 'Save')]";
        }
        if (elementNameAlexa.equals("TeacherRole")) {
            return "//p[contains(text(), 'TEACHER')]";
        }
        if (elementNameAlexa.equals("PointsSlider1")) {
            return "//*[contains(text(), 'Q1')]/../../..//mat-slider";
        }
        if (elementNameAlexa.equals("PointsSlider2")) {
            return "//*[contains(text(), 'Q2')]/../../..//mat-slider";
        }
        if (elementNameAlexa.equals("PointsSlider3")) {
            return "//*[contains(text(), 'Q3')]/../../..//mat-slider";
        }

//  Beginning of askscenario-alexa02  - ASK scenario 2 - Registration of new user

        if (elementNameAlexa.equals("LastName")) {
            return "//input[@formcontrolname='lastName']";
        }
        if (elementNameAlexa.equals("FirstName")) {
            return "//input[@formcontrolname='firstName']";
        }
        if (elementNameAlexa.equals("GroupCode")) {
            return "//input[@formcontrolname='group']";
        }
        if (elementNameAlexa.equals("ConfirmPassword")) {
            return "//input[@formcontrolname='confirmPassword']";
        }
        if (elementNameAlexa.equals("RegisterMeButton")) {
            return "//span[contains(text(),'Register Me')]";
        }

//  For askscenario-alexa03 - ASK scenario 3 - Assign Quiz to Student

        if (elementNameAlexa.equals("Assignments")) {
            return "//h5[contains(text(),'Assignments')]";
        }
        if (elementNameAlexa.equals("CreateNewAssignment")) {
            return "//span[contains(text(),'Create New Assignment')]";
        }
        if (elementNameAlexa.equals("SelectQuizArrow")) {
            return "//mat-select[@formcontrolname='quizId']";
        }
        if (elementNameAlexa.equals("QuizTitleToAssign")) {
            return "//span[contains(text(), 'Alexa Textual Quiz')]";
        }
        if (elementNameAlexa.equals("StudentName")) {
            return "//text()[contains(., 'Alexandra SeleniumTester')]/..";
        }
        if (elementNameAlexa.equals("GiveAssignment")) {
            return "//span[contains(text(),'Give Assignment')]";
        }

//  Beginning of scenarios - Log in as a Teacher

        if (elementNameAlexa.equals("EmailField")) {
            return "//input[@formcontrolname='email']";
        }
        if (elementNameAlexa.equals("PasswordField")) {
            return "//input[@formcontrolname='password']";
        }
        if (elementNameAlexa.equals("SubmitButton")) {
            return "//button[@type='submit']";
        }

// For askscenario-alexa04 - ASK scenario 4 - Submit Assignment

        if (elementNameAlexa.equals("MyAssignments")) {
            return "//h5[contains(text(),'My Assignments')]";
        }
        if (elementNameAlexa.equals("QuizToSubmit")) {
            return "//td[contains(text(), 'Alexa Textual Quiz')]/..//td[4]/a";
        }
        if (elementNameAlexa.equals("Textarea1")) {
            return "//h5[contains(text(), 'Question 1 / 3')]/..//textarea";
        }
        if (elementNameAlexa.equals("Textarea2")) {
            return "//h5[contains(text(), 'Question 2 / 3')]/..//textarea";
        }
        if (elementNameAlexa.equals("Textarea3")) {
            return "//h5[contains(text(), 'Question 3 / 3')]/..//textarea";
        }
        if (elementNameAlexa.equals("SubmitMyAnswers")) {
            return "//span[contains(text(), 'Submit My Answers')]";
        }
        if (elementNameAlexa.equals("MyGrades")) {
            return "//h5[contains(text(),'My Grades')]";
        }
        if (elementNameAlexa.equals("SuccessOk")) {
            return "//h1[contains(text(),'Success')]/../..//span[contains(text(), 'Ok')]";
        }

// For askscenario-alexa05 - Grade Textual Quiz

        if (elementNameAlexa.equals("Submissions")) {
            return "//h5[contains(text(),'Submissions')]";
        }
        if (elementNameAlexa.equals("QuizToGrade")) {
            return "//td[contains(text(), 'Alexandra SeleniumTester')]/..//td[6]/a/button";
        }
        if (elementNameAlexa.equals("PlusButton1")) {
            return "//h5[contains(text(), 'Question 1 of 3')]/../..//span[contains(text(), '+')]";
        }
        if (elementNameAlexa.equals("PlusButton2")) {
            return "//h5[contains(text(), 'Question 2 of 3')]/../..//span[contains(text(), '+')]";
        }
        if (elementNameAlexa.equals("PlusButton3")) {
            return "//h5[contains(text(), 'Question 3 of 3')]/../..//span[contains(text(), '+')]";
        }
        if (elementNameAlexa.equals("SaveGrade")) {
            return "//button/span[contains(text(), 'Save')]";
        }

//  For askscenario-alexa07 - ASK scenario 7 - Delete Quiz found by Title

        if (elementNameAlexa.equals("QuizToDelete")) {
            return "//mat-panel-title[contains(text(),'Alexa Textual Quiz')]";
        }
        if (elementNameAlexa.equals("DeleteQuizButton")) {
            return "//mat-panel-title[contains(text(),'Alexa Textual Quiz')]/../../..//span[contains(text(), 'Delete')]";
        }

//  Beginning of askscenario-alexa08  - ASK scenario 8 - Delete user found by Name

        if (elementNameAlexa.equals("UsersManagement")) {
            return "//a[contains(@href,'users-management')]";
        }

        if (elementNameAlexa.equals("StudentToDelete")) {
            return "//text()[contains(., 'Alexandra SeleniumTester')]/..";
        }
        if (elementNameAlexa.equals("OptionButton")) {
            return "//button";
        }
        if (elementNameAlexa.equals("DeleteUserButton")) {
            return "//button[@role='menuitem'][4]";
        }
        if (elementNameAlexa.equals("DeleteConfirmationButton")) {
            return "//h1[contains(text(),'Confirmation')]/../..//span[contains(text(), 'Delete')]";
        }
        return "";
    }
}
