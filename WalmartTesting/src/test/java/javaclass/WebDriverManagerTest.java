package javaclass;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WindowType;
import org.openqa.selenium.chrome.ChromeDriver;

public class WebDriverManagerTest {
	private static WebDriver driver;

    public static WebDriver getDriver() {
        if (driver == null) {
            // Set the path to your ChromeDriver executable
            System.setProperty("webdriver.chrome.driver", "C:\\Users\\Welcome\\ChromeDriver\\chromedriver-win64\\chromedriver.exe");
            driver = new ChromeDriver();
        }
        return driver;
    }

    public static void closeDriver() {
        if (driver != null) {
            driver.quit();
            driver = null;
        }
    }
    public static void driverSetup() {
		driver.switchTo().newWindow(WindowType.TAB);
	}
    public static void driversetmanager() {
    	
    }
}
