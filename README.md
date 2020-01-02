# Indzooom Android Downloader

[![Pub](https://img.shields.io/pub/v/indzooom_android_downloader.svg?style=flat-square)](https://pub.dartlang.org/packages/indzooom_android_downloader)

indzooom_android_downloader - A plugin that calls the Android download manager 一个调用安卓系统下载管理器的插件

## 首先 / First of all

## 在您的android / app / AndroidManifest.xml上添加以下内容： / On your android/app/AndroidManifest.xml add this

```xml
    <uses-permission android:name="android.permission.WAKE_LOCK" />
    <uses-permission android:name="android.permission.WRITE_EXTERNAL_STORAGE" />
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.READ_PHONE_STATE" />
```

## 添加依赖 / Add Dependency

```yaml
dependencies:
  indzooom_android_downloader: ^1.0.2+3
```

## 创建下载 / Create a download

```dart
IndzooomAndroidDownloader.download("url", "path", "fileName");
```

> 参数说明 / Parameter description

- url: 下载地址 / download link

- path: 下载路径，目前只能保存在SD卡目下，比如保存到SD卡`A`根目录就填写`/A` / The download path can only be saved under the SD card. For example, if you save it to the root directory of the SD card, fill in `/ A`.

- fileName: 保存的文件名称 / Saved file name

## 使用的示例 / Examples of use

```dart
import 'package:flutter/material.dart';
import 'package:indzooom_android_downloader/indzooom_android_downloader.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  void initState() {
    super.initState();
    IndzooomAndroidDownloader.getPermission();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: IconButton(
            icon: Icon(Icons.file_download),
            onPressed: () {
              IndzooomAndroidDownloader.download(
                  "https://apkpure.com/br/files-by-google-clean-up-space-on-your-phone/com.google.android.apps.nbu.files/download?from=details",
                  "/ABC",
                  "google_files.apk");
            },
          ),
        ),
      ),
    );
  }
}

```
