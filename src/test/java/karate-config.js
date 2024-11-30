function fn() {
    karate.configure("retry", {count: 10, interval: 5000});
    var config = {}
    var android = {}
    android["desiredConfig"] = {
        // "app": "D:\\My space\\Programing\\IntelliJ\\PracticeKarate\\src\\test\\resources\\eCartMultivendorCustomer.apk",
        "newCommandTimeout": 300,
        "platformVersion": "12L",
        "platformName": "Android",
        "connectHardwareKeyboard": true,
        "deviceName": "emulator-5554",
        "avd": "Pixel_3a_API_32",
        "automationName": "UiAutomator2",
        "appPackage": "wrteam.multivendor.customer",
        "appActivity": "wrteam.multivendor.customer.activity.SplashActivity"
    }
    config["android"] = android
    return config;
}