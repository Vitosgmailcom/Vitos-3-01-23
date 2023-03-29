package support;

public class IBElementLib {
    public static String StagingEnvWeb = "http://ask-stage.portnov.com/#/registration";

    public static String byName(String elementName) {
        if (elementName.equals("FirstName")) {
            return "//input[@formcontrolname='firstName']";
        }
        if (elementName.equals("LastNameField")) {
            return "//input[@formcontrolname='lastName']";
        }
        if (elementName.equals("EmailField")) {
            return "//input[@formcontrolname='email']";
        }

        if (elementName.equals("GroupCodeField")) {
            return "//input[@formcontrolname='group']";
        }
        if (elementName.equals("PasswordField")) {
            return "//input[@formcontrolname='password']";
        }
        if (elementName.equals("ConfirmPasswordField")) {
            return "//input[@formcontrolname='confirmPassword']";
        }
        if (elementName.equals("RegisterMeButton")) {
            return "//span[contains(text(),'Register Me')]";
        }
        if (elementName.equals("NewNameField")) {
            return "//input[@formcontrolname='name']";
        }
        return "";
    }
}




