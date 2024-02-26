package javaclass;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class WebDriverUtils {
    public static WebDriver getWebDriver() {
        // Initialize and configure the WebDriver instance
        System.setProperty("webdriver.chrome.driver", "C:\\Users\\Welcome\\ChromeDriver\\chromedriver-win64\\chromedriver.exe");
        WebDriver driver = new ChromeDriver();
        return driver;
    }
}