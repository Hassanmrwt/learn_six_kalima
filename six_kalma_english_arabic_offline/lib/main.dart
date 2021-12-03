import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:six_kalma_english_arabic_offline/admobhelper_interstitial.dart';
import 'package:six_kalma_english_arabic_offline/arabic.dart';
import 'package:six_kalma_english_arabic_offline/eng.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:share/share.dart';
import 'package:flutter/widgets.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  final adsInitialization = MobileAds.instance.initialize();
  runApp(MyApp1());
}

class MyApp1 extends StatelessWidget {
  const MyApp1({Key? key}) : super(key: key);
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    );
  }
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //object of interstitial ads class
  AdmobHelperInt admobHelper = new AdmobHelperInt();

  @override
/*  //ads setting from codelab
  Future<InitializationStatus> _initGoogleMobileAds() {
    // TODO: Initialize Google Mobile Ads SDK
    return MobileAds.instance.initialize();
  }
*/
  @override
  void _shareUS() {
    Share.share(
        'https://play.google.com/store/apps/details?id=com.hassanmrwt.six_kalma_english_arabic_offline');
  }

  _launchURLOfPlayStore() async {
    const url =
        'https://play.google.com/store/apps/details?id=com.hassanmrwt.six_kalma_english_arabic_offline';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  void initState() {
    admobHelper.createInterad();
    admobHelper.showInterad();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/home2.png"), fit: BoxFit.fill)),
            child: Column(
              verticalDirection: VerticalDirection.down,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  height: 240.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(80, 0, 80, 5),
                  height: 50.0,
                  child: ElevatedButton(
                    child: Text('English Recitation'),
                    style: ElevatedButton.styleFrom(
                      shape: const BeveledRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(40))),
                      elevation: 20.0,
                      primary: Colors.deepPurple,
                      onSurface: Colors.grey,
                    ),
                    onPressed: () {
                      admobHelper.createInterad();
                      admobHelper.showInterad();
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => const Eng()));
                    },
                  ),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(80, 0, 80, 5),
                  height: 50.0,
                  child: ElevatedButton(
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        elevation: 20.0,
                        primary: Colors.deepPurple,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        admobHelper.createInterad();
                        admobHelper.showInterad();

                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Arabic()));
                      },
                      child: Text('Arabic Recitation')),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(80, 0, 80, 5),
                  height: 50.0,
                  child: ElevatedButton(
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        elevation: 20.0,
                        primary: Colors.deepPurple,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        admobHelper.createInterad();
                        admobHelper.showInterad();

                        _launchURLOfPlayStore();
                      },
                      child: Text('Rate Us')),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(80, 0, 80, 5),
                  height: 50.0,
                  child: ElevatedButton(
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        elevation: 20.0,
                        primary: Colors.deepPurple,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        admobHelper.createInterad();
                        admobHelper.showInterad();

                        _shareUS();
                      },
                      child: Text('Do Virtue, Share')),
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(80, 0, 80, 5),
                  height: 50.0,
                  child: ElevatedButton(
                      clipBehavior: Clip.antiAlias,
                      style: ElevatedButton.styleFrom(
                        shape: const BeveledRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(40))),
                        elevation: 20.0,
                        primary: Colors.deepPurple,
                        onSurface: Colors.grey,
                      ),
                      onPressed: () {
                        admobHelper.createInterad();
                        admobHelper.showInterad();
                        SystemNavigator.pop();
                      },
                      child: Text('Close Application')),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
