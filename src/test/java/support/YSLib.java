package support;

public class YSLib {
    public static String StagingEnvWeb;

    public static String byName(String elementName) {
        if (elementName.equals("EmailField")) {
            return "//input[@formcontrolname='email']";
        }
        if (elementName.equals("PasswordField")) {
            return "//input[@formcontrolname='password']";
        }
        if (elementName.equals("SubmitButton")) {
            return "//button[@type='submit']";
        }
        if (elementName.equals("Quizzes")) {
            return "//h5[contains(text(),'Quizzes')]";
        }
        if (elementName.equals("Create New Quiz")) {
            return "//span[contains(text(),'Create New Quiz')]";
        }
        if (elementName.equals("Title Of the Quiz")) {
            return "//input[@formcontrolname='name']";
        }
        if (elementName.equals("Add Question")) {
            return "//form[1]/div[1]/button[1]/span[1]";

        }
        if (elementName.equals("Multiple-Choise")) {
            return "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[3]";
        }
        if (elementName.equals("Question 1")) {
            return "//textarea[@formcontrolname='question']";
        }
        if (elementName.equals("Option1")) {
            return "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[1]";
        }
        if (elementName.equals("Option2")) {
            return "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[2]";
        }

        if (elementName.equals("Answer1")) {
            return "//mat-checkbox[@id='mat-checkbox-2']";
        }

        if (elementName.equals("Add Question")) {
            return "//span[contains(text(),'Add Option')]";
        }
        if (elementName.equals("Singl Choise")) {
            return "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[2]";

        }
        if (elementName.equals("Question 2")) {
            return "(//textarea[@formcontrolname='question'])[2]";
        }
        if (elementName.equals("Option2.1")) {
            return "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[1]";
        }
        if (elementName.equals("Option2.2")) {
            return "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[2]";
        }
        if (elementName.equals("Answer2")) {
            return "(//mat-panel-title[contains(text(), 'Q2')]/../../..//div[@class='right']//mat-radio-button)[2]";
        }
        if (elementName.equals("Save")) {
            return "//span[contains(text(), 'Save')]";
        }
        if (elementName.equals("Assignments")) {
            return "//h5[contains(text(),'Assignments')]";
        }

        if (elementName.equals("Create New Assignment")) {
            return "//span[contains(text(),'Create New Assignment')]";
        }
        if (elementName.equals("Select Quiz To Assign")) {
            return "//span[contains(text(),'Select Quiz To Assign')]";
        }
        if (elementName.equals("TestQuizeYS2")) {
            return "//span[contains(text(),'TestQuizeYS2')]";
        }

        if (elementName.equals("Select Student")) {
            return "//text()[contains(.,'YTest SUser' )]/..";
        }

        if (elementName.equals("Give Assignment")) {
            return "//span[contains(text(),'Give Assignment')]";
        }
        if (elementName.equals("User's Management")) {
            return  "//h5[contains(text(),\"User's Management\")]";
        }
        if (elementName.equals("Options")) {
            return "//text()[contains(.,'Options' )]/..";

        }

        if (elementName.equals("Delete User")) {
            return "//text()[contains(.,'Delete User' )]/..";

        }

        if (elementName.equals("Delete")) {
            return "//span[contains(text(),'Delete')]";
        }

        if (elementName.equals("My Assignments")) {
            return "//h5[contains(text(), 'My Assignments')]";
        }


        if (elementName.equals("Go To Assessment")) {
            return "//*[contains(text(),'TestQuizeYS2')]/../../..//span";
        }
        return "";
    }
}


