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
