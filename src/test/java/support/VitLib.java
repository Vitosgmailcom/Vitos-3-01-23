package support;

public class VitLib {
    public static String new_user_email="vkqa2023@gmail.com";
    public static String newuser;
    public static String myXpass(String xpass_name){
        if (xpass_name.equals("EmailField")) {
            return "//input[@placeholder='Email *']";
        }
        if (xpass_name.equals("PasswordField")) {
            return "//input[@placeholder='Password *']";
        }

        return "";
    }



}
