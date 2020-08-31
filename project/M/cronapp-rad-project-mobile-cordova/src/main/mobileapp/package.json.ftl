{
  "name": "${appid}",
  "displayName": "${appname}",
  "version": "1.0.0",
  "description": "${appname}",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "author": "CronApp IDE",
  "license": "Apache-2.0",
  "devDependencies": {
    "@ionic/v1-toolkit": "^1.0.0",
    "cordova-plugin-device": "^2.0.2",
    "cordova-plugin-ionic-keyboard": "^2.2.0",
    "cordova-plugin-ionic-webview": "^4.2.1",
    "cordova-plugin-splashscreen": "^5.0.2",
    "cordova-plugin-statusbar": "^2.4.2",
    "cordova-plugin-whitelist": "^1.3.3",
    "gulp": "^3.5.6",
    "gulp-clean-css": "^3.7.0",
    "gulp-rename": "^1.2.0",
    "gulp-sass": "^3.1.0"
  },
  "cordova": {
    "plugins": {
      "cordova-plugin-whitelist": {},
      "cordova-plugin-statusbar": {},
      "cordova-plugin-device": {},
      "cordova-plugin-splashscreen": {},
      "cordova-plugin-ionic-webview": {
        "ANDROID_SUPPORT_ANNOTATIONS_VERSION": "27.+"
      },
      "cordova-plugin-ionic-keyboard": {}
    },
    "platforms": []
  },
  "dependencies": {}
}