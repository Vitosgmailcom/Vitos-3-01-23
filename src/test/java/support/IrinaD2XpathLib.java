package support;

public class IrinaD2XpathLib {
    public static String PIN_URL = ("https://www.pinterest.com/");

    public static String getXpath(String name) {
        if (name.equals("Blog")) {
            return "//a[contains(text(), 'Blog')]";
        }
        return "";
    }
}


