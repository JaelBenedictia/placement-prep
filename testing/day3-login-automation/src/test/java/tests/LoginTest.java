package tests;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class LoginTest {

	public static void main(String[] args) throws InterruptedException, IOException {

		WebDriver driver = new ChromeDriver();

		driver.manage().window().maximize();

		driver.get("https://practicetestautomation.com/practice-test-login/");

		driver.findElement(By.id("username")).sendKeys("student");

		driver.findElement(By.id("password")).sendKeys("WrongPass");

		driver.findElement(By.id("submit")).click();

		Thread.sleep(2000);

		String title = driver.getTitle();

		if(title.contains("Logged In Successfully")) {
			System.out.println("TEST PASSED");
		}
		else {
			System.out.println("TEST FAILED");

			File src = ((TakesScreenshot)driver).getScreenshotAs(OutputType.FILE);

			File dest = new File("failure.png");

			FileUtils.copyFile(src, dest);
		}

		driver.quit();
	}
}