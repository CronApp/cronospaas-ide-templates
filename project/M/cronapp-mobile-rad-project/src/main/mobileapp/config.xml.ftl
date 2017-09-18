<?xml version='1.0' encoding='utf-8'?>
<widget id="com.ionicframework.starter" version="0.0.1" xmlns="http://www.w3.org/ns/widgets" xmlns:cdv="http://cordova.apache.org/ns/1.0">
  <name>${projectName}</name>
  <description>Developed by IDE CronApp</description>
  <author email="you@example.com" href="http://example.com.com/">CronApp</author>
  <content src="index.html" />
  <access origin="*" />
  <preference name="webviewbounce" value="false" />
  <preference name="UIWebViewBounce" value="false" />
  <preference name="DisallowOverscroll" value="true" />
  <preference name="android-minSdkVersion" value="16" />
  <preference name="BackupWebStorage" value="none" />
  <preference name="SplashScreen" value="screen" />
  <preference name="SplashScreenDelay" value="4000" />
  <preference name="AutoHideSplashScreen" value="false" />
  <preference name="ShowSplashScreenSpinner" value="false" />
  <feature name="StatusBar">
    <param name="ios-package" onload="true" value="CDVStatusBar" />
  </feature>
  <icon src="resources\icon.png" />
  <splash src="resources\splash.png" />
  <plugin name="cordova-plugin-whitelist" spec="~1.2.2" />
  <plugin name="cordova-plugin-vibration" spec="~2.1.1" />
  <plugin name="cordova-plugin-splashscreen" spec="~4.0.0" />
</widget>
