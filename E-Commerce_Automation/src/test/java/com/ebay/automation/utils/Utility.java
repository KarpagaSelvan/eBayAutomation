package com.ebay.automation.utils;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.edge.EdgeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class Utility {

	WebDriver driver;

	public void browserLaunch(String browserType) {

		switch (browserType) {
		case "Chrome":
			driver = new ChromeDriver();

			break;
		case "Firefox":
			driver = new FirefoxDriver();

			break;
		case "Edge":
			driver = new EdgeDriver();

			break;

		default:
			break;
		}
	}

}
