import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeScreen extends StatelessWidget {
  WebViewController? controller;
  HomeScreen({Key? key}) : super(key: key);
  final HomeUrl = 'https://blog.naver.com/woaksdl14';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: (){
                if(controller == null){
                  return;
                }else{
                  controller!.loadUrl(HomeUrl);
                }
              },
              icon: Icon(Icons.home),
          ),
        ],
        backgroundColor: Colors.green,
        title: Text('Gommin'),
        centerTitle: true,
      ),
      body: WebView(
        onWebViewCreated: (WebViewController controller){
          this.controller = controller;
        },
        initialUrl: HomeUrl,
        javascriptMode: JavascriptMode.unrestricted,
      )
    );
  }
}

