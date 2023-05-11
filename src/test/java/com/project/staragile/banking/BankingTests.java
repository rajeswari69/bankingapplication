package com.project.staragile.banking;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

//import io.github.bonigarcia.wdm.WebDriverManager;

public class BankingTests {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("Welcome");
		  System.setProperty("webdriver.chrome.driver","C:\\Users\\Bizzflo\\Downloads\\chromedriver_win32(1)\\chromedriver.exe");
		  //System.setProperty("webdriver.chrome.driver","/usr/bin/chromedriver");

		  ChromeOptions chromeoptions = new ChromeOptions();
		  //chromeoptions.addArguments("--headless");
		  //chromeoptions.addArguments("--no-sandbox");
		  //chromeoptions.addArguments("--disable-dev-shm-usage");
		  chromeoptions.addArguments("--remote-allow-origins=*");
		  //WebDriverManager.chromedriver().setup();
		  WebDriver driver = new ChromeDriver(chromeoptions);
		  driver.get("http://13.234.33.241:8080/contact.html");
		  driver.manage().window().maximize();
      driver.findElement(By.name("Name")).sendKeys("rajeswari");
		  driver.findElement(By.name("Phone Number")).sendKeys("7386672073");
		  driver.findElement(By.name("Email")).sendKeys("rajeswarigottipalli69@gmail.com");
		  driver.findElement(By.id("comment")).sendKeys("mydata");
		  System.out.println("success...");

	

	}

}
