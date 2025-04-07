import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

final homeUri = Uri.parse('https://cherry22.tistory.com');

class HomeScreen extends StatelessWidget {

  WebViewController controller = new WebViewController()
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..loadRequest(homeUri);

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Code FactoraaaaAS'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: (){
              controller.loadRequest(homeUri);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: WebViewWidget(
          controller: controller,
      ),
    );
  }
}
