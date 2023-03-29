package support;

public class IrinaD1xpathLib {
    public static String LOG_URL = ("http://ask-stage.portnov.com/#/login");
    public static String REG_URL = ("http://ask-stage.portnov.com/#/registration");


    public static String getXPath(String name) {
        if (name.equals("EmailField")) {
            return "//input[@formcontrolname='email']";
        }
        if (name.equals("PasswordField")) {
            return "//input[@formcontrolname='password']";
        }
        if (name.equals("SubmitButton")) {
            return "//button[@type='submit']";
        }
        if (name.equals("Assignments")) {
            return "//h5[contains(text(), 'Assignments')]";
        }
        if (name.equals("Create New Assignment")) {
            return "//span[contains (text(), 'Create New Assignment')]";

        }
        if (name.equals("Select Quiz To Assign")) {
            return "//span[contains (text(), 'Select Quiz To Assign')]";

        }
        if (name.equals("SQA Basic-1")) {
            return "(//span[contains (text (), 'SQA Basics-1')])[1]";
        }
        if (name.equals("LauraB")) {
            return "//text()[contains (., 'LauraB')]/..";
        }
        if (name.equals("Give Assignment")) {
            return "//button[@type='submit']";
        }
        if (name.equals("FirstName")) {
            return "//input[@formcontrolname='firstName']";
        }
        if (name.equals("LastName")) {
            return "//input[@formcontrolname='lastName']";
        }
        if (name.equals("Email")) {
            return "//input[@formcontrolname='email']";
        }
        if (name.equals("GroupCode")) {
            return "//input[@formcontrolname='group']";
        }
        if (name.equals("Password")) {
            return "//input[@formcontrolname='password']";
        }
        if (name.equals("ConfirmPassword")) {
            return "//input[@formcontrolname='confirmPassword']";
        }
        if (name.equals("RegisterMe")) {
            return "//button[@class='mat-raised-button mat-primary']";

        }
        return "";
    }


}
