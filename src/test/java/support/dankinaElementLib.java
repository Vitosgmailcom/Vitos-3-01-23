package support;

public class dankinaElementLib {
    public static String StagingEnvWeb = "http://ask-stage.portnov.com";


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
            return "//body/ac-root[1]/mat-sidenav-container[1]/mat-sidenav[1]/ac-side-menu[1]/mat-list[1]/a[4]\n";
        }
        if (elementName.equals("Create New Quiz")) {
            return "//span[contains(text(),'Create New Quiz')]";
        }
        if (elementName.equals("Title Of The Quiz")) {
            return "//input[@formcontrolname='name']";
        }
        if (elementName.equals("Add Question")) {
            return "//mat-icon[contains(text(),'add_circle')]";
        }
        if (elementName.equals("Single-Choice")) {
            return "//mat-panel-title[contains(text(), 'Q1')]/../../..//mat-radio-button[2]";
        }
        if (elementName.equals("Question")) {
            return "//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='question']";
        }
        if (elementName.equals("Option 1")) {
            return "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[1]";
        }
        if (elementName.equals("Option 2")) {
            return "(//mat-panel-title[contains(text(), 'Q1')]/../../..//textarea[@formcontrolname='option'])[2]";
        }
        if (elementName.equals("Radio Button")) {
            return "//mat-panel-title[contains(text(), 'Q1')]/../../..//ac-question-body-form/div[1]/div[2]/div[1]/mat-radio-group[2]/mat-radio-button[1]/label[1]/div[1]";
        }
        if (elementName.equals("Is Show-Stopper question")) {
            return "//ac-question-body-form/div[1]/div[2]/div[1]/div[2]/mat-checkbox[1]/label[1]/div[1]";
        }
        if (elementName.equals("Add Question 2")) {
            return "//mat-icon[contains(text(),'add_circle')]";
        }
        if (elementName.equals("Multiple-Choice")) {
            return "//mat-panel-title[contains(text(), 'Q2')]/../../..//mat-radio-button[3]";
        }
        if (elementName.equals("Question 2")) {
            return "//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='question']";
        }
        if (elementName.equals("Q2 Option 1")) {
            return "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[1]";
        }
        if (elementName.equals("Q2 Option 2")) {
            return "(//mat-panel-title[contains(text(), 'Q2')]/../../..//textarea[@formcontrolname='option'])[2]";
        }
        if (elementName.equals("Q2 Radio Button")) {
            return "//mat-panel-title[contains(text(), 'Q2')]/../../..//ac-question-body-form/div[1]/div[2]/div[1]/div[1]/mat-checkbox[1]/label[1]/div[1]";
        }
        if (elementName.equals("Save")) {
            return "//span[contains(text(),'Save')]";
        }
        if (elementName.equals("Assignments")) {
            return "//h5[contains(text(),'Assignments')]";
        }
        if (elementName.equals("Create New Assignment")) {
            return "//span[contains(text(),'Create New Assignment')]";
        }
        if (elementName.equals("First Name")) {
            return "//input[@formcontrolname='firstName']";
        }
        if (elementName.equals("Last Name")) {
            return "//input[@formcontrolname='lastName']";
        }
        if (elementName.equals("Select Quiz To Assign")) {
            return "//span[contains(text(),'Select Quiz To Assign')]";
        }
        if (elementName.equals("Tat Quiz")) {
            return "//span[contains(text(),'Tat Quiz')]";
        }
        if (elementName.equals("Select Student")) {
            return "//text()[contains(.,'TatTest TatUser' )]/..";
        }
        if (elementName.equals("Give Assignment")) {
            return "//span[contains(text(),'Give Assignment')]";
        }
        if (elementName.equals("User's Management")) {
            return "//h5[contains(text(),\"User's Management\")]";
        }
        if (elementName.equals("TatTest TatUser")) {
            return "//h4[contains(text(),'TatTest TatUser')]";
        }
        if (elementName.equals("Options")) {
            return "//button[@class='mat-raised-button mat-accent']";
        }
        if (elementName.equals("Delete User")) {
            return "//mat-icon[contains(text(),'delete')]";
        } if (elementName.equals("Delete")) {
            return "//span[contains(text(),'Delete')]";
        }
        if (elementName.equals("Tat Quiz 2 Questions")) {
            return "//mat-panel-title[contains(text(),'Tat Quiz')]";
        }
        if (elementName.equals("Delete Quiz")) {
            return "//mat-panel-title[contains(text(),'Tat Quiz')]/../../..//span[contains(text(), 'Delete')]";
        }
        if (elementName.equals("Delete in red")) {
            return "//body/div[2]/div[2]/div[1]/mat-dialog-container[1]/ac-modal-confirmation[1]/div[2]/button[2]";
        }




        return "";
    }
}
