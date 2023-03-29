package support;

public class KatLib {

    public static String StagingWeb = "http://ask-stage.portnov.com/#/login";
    public static String ElementFor(String name) {
        if (name.equals("EmailField")) {
            return "//input[@formcontrolname='email']";
        }
        if(name.equals("PasswordField")) {
            return "//input[@formcontrolname='password']";
        }
        if (name.equals("SubmitButton")){
            return "//span[contains(text(),'Sign In')]";
        }
        return "";
    }
}



