import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:stela_app/constants/colors.dart';
// import 'dart:io';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  var child;

  var children;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: primaryWhite,
            bottomNavigationBar: BottomAppBar(
              color: primaryBar,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                    'Note: Please mention the following details in your e-mail - Registered Email ID, Name, Roll No., Branch and Year of Admission.',
                    style: TextStyle(color: primaryWhite, fontSize: 10)),
              ),
              elevation: 0,
            ),
            appBar: AppBar(
              title: Text('STELA'),
              backgroundColor: primaryBar,
              leading: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: primaryWhite,
                  )),
            ),
            body: Center(
              child: SingleChildScrollView(
                child: Container(
                    child: Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        padding: EdgeInsets.all(10),
                        child: Column(children: <Widget>[
                          Icon(
                            Icons.contact_support_outlined,
                            color: primaryButton,
                            size: 100,
                          ),
                          Text('CONTACT US',
                              style: TextStyle(
                                  color: primaryButton,
                                  fontSize: 25,
                                  fontFamily: 'PTSerif',
                                  fontWeight: FontWeight.bold)),
                          Container(
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primaryWhite),
                            ),
                            child: Text('Facing Issues in the App ?',
                                style: TextStyle(
                                    color: primaryBar,
                                    fontSize: 15,
                                    fontFamily: 'PTSerif',
                                    fontWeight: FontWeight.bold)),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(2),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 2.0, color: primaryButton),
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(8.0),
                              child: new Text('mail us at\nstela4.0igdtuw@gmail.com',
                                  style: TextStyle(
                                      color: primaryBar, fontSize: 15),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primaryWhite),
                            ),
                            child: Text(
                              'To clear your queries,\ncontact us through mail or\nfill the feedback form',
                              style: TextStyle(
                                  color: primaryBar,
                                  fontSize: 15,
                                  fontFamily: 'PTSerif',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(2),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: primaryBar,
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(width: 2.0, color: primaryButton),
                            ),
                            child: TextButton(
                              child: new Text('Feedback Form',
                                  style: TextStyle(
                                      color: primaryWhite, fontSize: 15)),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Feedback()),
                                );
                              },
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: primaryWhite,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(width: 2.0, color: primaryWhite),
                            ),
                            child: Text(
                              'Your valuable feedback is important for improvement',
                              style: TextStyle(
                                  color: primaryBar,
                                  fontSize: 15,
                                  fontFamily: 'PTSerif',
                                  fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                            alignment: Alignment.center,
                            padding: EdgeInsets.all(2),
                          ),
                        ]))),
              ),
            )));
  }
}

launch(String s) {}

class Feedback extends StatefulWidget {
  @override
  State<Feedback> createState() => _FeedbackState();
}

class _FeedbackState extends State<Feedback> {
  final GlobalKey webViewKey = GlobalKey();

  InAppWebViewController? webViewController;

  InAppWebViewGroupOptions options = InAppWebViewGroupOptions(
      crossPlatform: InAppWebViewOptions(
        useShouldOverrideUrlLoading: true,
        mediaPlaybackRequiresUserGesture: false,
      ),
      android: AndroidInAppWebViewOptions(
        useHybridComposition: true,
      ),
      ios: IOSInAppWebViewOptions(
        allowsInlineMediaPlayback: true,
      ));

  late PullToRefreshController pullToRefreshController;

  String url =
      "https://docs.google.com/forms/d/e/1FAIpQLSfkC-iGEFK8wenf9FibzFw8tBUFhl9b5aK0-BS1jx7g7Lf8-A/viewform";

  double progress = 0;

  final urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    pullToRefreshController = PullToRefreshController(
      options: PullToRefreshOptions(
        color: Colors.blue,
      ),
      onRefresh: () async {
        if (defaultTargetPlatform == TargetPlatform.android) {
          webViewController?.reload();
        } else if (defaultTargetPlatform == TargetPlatform.iOS) {
          webViewController?.loadUrl(
              urlRequest: URLRequest(url: await webViewController?.getUrl()));
        }
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryWhite,
        appBar: AppBar(
          title: Text('STELA'),
          backgroundColor: primaryBar,
          leading: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                color: primaryWhite,
              )),
        ),
        body: SafeArea(
            child: Column(children: <Widget>[
          Expanded(
            child: Stack(
              children: [
                InAppWebView(
                  key: webViewKey,
                  initialUrlRequest: URLRequest(url: Uri.parse(url)),
                  initialOptions: options,
                  pullToRefreshController: pullToRefreshController,
                  onWebViewCreated: (controller) {
                    webViewController = controller;
                  },
                  onLoadStart: (controller, url) {
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  androidOnPermissionRequest:
                      (controller, origin, resources) async {
                    return PermissionRequestResponse(
                        resources: resources,
                        action: PermissionRequestResponseAction.GRANT);
                  },
                  shouldOverrideUrlLoading:
                      (controller, navigationAction) async {
                    var uri = navigationAction.request.url!;

                    if (![
                      "http",
                      "https",
                      "file",
                      "chrome",
                      "data",
                      "javascript",
                      "about"
                    ].contains(uri.scheme)) {
                      if (await canLaunch(url)) {
                        // Launch the App
                        await launch(
                          url,
                        );
                        // and cancel the request
                        return NavigationActionPolicy.CANCEL;
                      }
                    }

                    return NavigationActionPolicy.ALLOW;
                  },
                  onLoadStop: (controller, url) async {
                    pullToRefreshController.endRefreshing();
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  onLoadError: (controller, url, code, message) {
                    pullToRefreshController.endRefreshing();
                  },
                  onProgressChanged: (controller, progress) {
                    if (progress == 100) {
                      pullToRefreshController.endRefreshing();
                    }
                    setState(() {
                      this.progress = progress / 100;
                      urlController.text = this.url;
                    });
                  },
                  onUpdateVisitedHistory: (controller, url, androidIsReload) {
                    setState(() {
                      this.url = url.toString();
                      urlController.text = this.url;
                    });
                  },
                  onConsoleMessage: (controller, consoleMessage) {
                    print(consoleMessage);
                  },
                ),
                progress < 1.0
                    ? LinearProgressIndicator(value: progress)
                    : Container(),
              ],
            ),
          ),
        ])));
  }
}
