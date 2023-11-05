import 'package:desktop_webview_window/desktop_webview_window.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

import '../../../../core/utils/app_constance.dart';

class WindowsWebViewScreen extends StatefulWidget {
  const WindowsWebViewScreen({Key? key}) : super(key: key);

  @override
  State<WindowsWebViewScreen> createState() => _WindowsWebViewScreenState();
}

class _WindowsWebViewScreenState extends State<WindowsWebViewScreen> {
  bool? _webviewAvailable;

  @override
  void initState() {
    super.initState();
    WebviewWindow.isWebviewAvailable().then((value) {
      setState(() {
        _webviewAvailable = value;
        if (_webviewAvailable != null && _webviewAvailable == true) {
          _onTap(context);
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: TextButton(
              child: const Text('Click me',
                  style: TextStyle(color: Colors.black, fontSize: 20)),
              onPressed: () {
                _onTap(context);
              }),
        ),
        body: Container(
          child: Text('Loading'),
        ));
  }
}

_onTap(BuildContext context) async {
  final webview = await WebviewWindow.create(
    configuration: CreateConfiguration(),
  );
  webview
    ..setBrightness(Brightness.dark)
    ..launch(AppConstance.windowsUrl)
    ..registerJavaScriptMessageHandler("myMessage", (name, body) {});
}

Future<String> getWebViewPath() async {
  final document = await getApplicationDocumentsDirectory();
  return p.join(
    document.path,
    'desktop_webview_window',
  );
}
