# Indzooom Android Downloader

[![Pub](https://img.shields.io/pub/v/flutter_android_downloader.svg?style=flat-square)](https://pub.dartlang.org/packages/indzooom_android_downloader)


indzooom_android_downloader - A plugin that calls the Android download manager 一个调用安卓系统下载管理器的插件 


## 首先 / First of all

## 在您的android / app / AndroidManifest.xml上添加以下内容： / On your android/app/AndroidManifest.xml add this: 
	```xml
	<uses-permission android:name="android.permission.WAKE_LOCK" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE"></uses-permission>
    <uses-permission android:name="android.permission.INTERNET"></uses-permission>
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE"></uses-permission>
    <uses-permission android:name="android.permission.READ_PHONE_STATE"></uses-permission>
	```

## 添加依赖 / Add Dependency

```yaml
dependencies:
  flutter_android_downloader: ^1.0.1+2
```

## 创建下载 / Create a download

```dart
FlutterAndroidDownloader.download("url", "path", "fileName");
```

> 参数说明 / Parameter description

- url: 下载地址 / download link

- path: 下载路径，目前只能保存在SD卡目下，比如保存到SD卡`A`根目录就填写`/A` / The download path can only be saved under the SD card. For example, if you save it to the root directory of the SD card, fill in `/ A`.

- fileName: 保存的文件名称 / Saved file name

## 使用的示例 / Examples of use

```dart
import 'package:flutter/material.dart';
import 'package:flutter_android_downloader/flutter_android_downloader.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    FlutterAndroidDownloader.getPermission();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {
              FlutterAndroidDownloader.download(
                  "https://qd.myapp.com/myapp/qqteam/AndroidQQ/mobileqq_android.apk",
                  "/ABC",
                  "mobileqq_android.apk");
            },
          ),
        ),
      ),
    );
  }
}

```

