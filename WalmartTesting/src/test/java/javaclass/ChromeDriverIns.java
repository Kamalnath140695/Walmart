package javaclass;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import io.github.bonigarcia.wdm.WebDriverManager;

public class ChromeDriverIns {
	WebDriver driver;
	private ChromeDriverIns() {
		WebDriverManager.chromedriver().setup();
			 driver = new ChromeDriver();

	}
	public static void main(String[] args) {
		ChromeDriverIns ch= new ChromeDriverIns();
		
	}
	
}
