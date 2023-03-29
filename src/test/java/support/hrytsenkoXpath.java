package support;

public class hrytsenkoXpath {

    public static String AskUrl = "http://ask-stage.portnov.com";
    public static String AskRegUrl = "http://ask-stage.portnov.com/#/registration";
    public static String ElementFor(String name) {
        if (name.equals("EmailField")) {
            return "//input[@formcontrolname='email']";
        }
        if (name.equals("PasswordField")) {
            return "//input[@formcontrolname='password']";
        }
        if (name.equals("SubmitButton")) {
            return "//span[contains(text(),'Sign In')]";
        }
        if (name.equals("FirstNameField")) {
            return "//input[@formcontrolname='firstName']";
        }
        if (name.equals("LastNameField")) {
            return "//input[@formcontrolname='lastName']";
        }
        if (name.equals("PasswordRegField")) {
            return "//input[@formcontrolname='password']";
        }
        if (name.equals("ConfirmPasswordField")) {
            return "//input[@formcontrolname='confirmPassword']";
        }
        if (name.equals("GroupCodeField")) {
            return "//input[@formcontrolname='group']";
        }
        if (name.equals("First name field is required")) {
            return "(//mat-error[@role='alert']/../..)[1]";
        }
        if (name.equals("Last name field is required")) {
            return "(//mat-error[@role='alert']/../..)[2]";
        }
        if (name.equals("Email field is required")) {
            return "(//mat-error[@role='alert']/../..)[3]";
        }
        if (name.equals("Group code field is required")) {
            return "(//mat-error[@role='alert']/../..)[4]";
        }
        if (name.equals("Password field is required")) {
            return "(//mat-error[@role='alert']/../..)[5]";
        }
        if (name.equals("Confirm password field is required")) {
            return "(//mat-error[@role='alert']/../..)[6]";
        }
        if (name.equals("RegMeButton")) {
            return "//span[contains(text(),'Register Me')]";
        }
        if (name.equals("RegNowButton")) {
            return "//span[contains(text(),'Register Now')]";
        }
        if (name.equals("SubmitRegButton")) {
            return "//span[contains(text(),'Register Me')]";
        }

        return "";
    }
}
