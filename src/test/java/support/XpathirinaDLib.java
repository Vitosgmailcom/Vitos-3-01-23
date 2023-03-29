package support;

public class XpathirinaDLib {
    public static final String REG_URL = ("http://ask-stage.portnov.com/#/registration");
    public static final String LOG_URL = ("http://ask-stage.portnov.com/#/login");

    public static String ElementForIrinaD(String name) {
        switch (name) {
            case "FirstName":
                return "//input[@formcontrolname='firstName']";
            case "LastName":
                return "//input[@formcontrolname='lastName']";
            case "Email":
                return "//input[@formcontrolname='email']";
            case "GroupCode":
                return "//input[@formcontrolname='group']";
            case "Password":
                return "//input[@formcontrolname='password']";
            case "ConfirmPassword":
                return "//input[@formcontrolname='confirmPassword']";
            case "RegisterMe":
                return "//span[contains (text(), 'Register Me')]";
            case "Signin":
                return "//button[@class='mat-raised-button mat-primary']";
            case "Setting":
                return "//h5[contains(text(),'Settings')]";
            case "ChengeYourName":
                return "//span[contains (text(), 'Change Your Name')]";
            case "NewName":
                return "//input[@placeholder='New name']";
            case "Change":
                return "//mat-dialog-container/../..//span[contains (text(), 'Change')]";
            case "You have been Registered.":
                return "//h4[contains (text(), 'You have been Registered.')]";
        }
            return "";

    }

}
