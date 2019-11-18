import 'package:flutter/material.dart';
import 'package:flutter_web/screens/drawer_screen.dart';
import 'package:flutter_web/widgets/waveAppBar.dart';
import 'dart:js' as js;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Zmoke',
      theme: ThemeData(
        fontFamily: "28Days",
        textTheme: Theme.of(context).textTheme.apply(fontFamily: "28Days", fontSizeFactor: 2.0),
        primarySwatch: Colors.lightBlue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      persistentFooterButtons: <Widget>[
        Container(
          margin: EdgeInsets.only(right: 2),
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          child: Text("Z"),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: LinearGradient(colors: [
                Colors.black45,
                Colors.grey,
                Colors.black45,
              ])),
        ),
        Text("moke"),
        SizedBox(width: 100),
        Text("About"),
        SizedBox(width: 100),
        Text("Blog"),
        SizedBox(width: 100),
        Text("Contact"),
      ],
      body: Container(
        // alignment: Alignment.topCenter,
        child: WebContent(),
      ),
    );
  }
}

class WebContent extends StatelessWidget {
  const WebContent({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return ListView(shrinkWrap: true, children: <Widget>[
      // DrawerScreen(),
      LoopAppBar(
        size: height * 0.3,
      ),

      Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            width: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 350,
                  width: 350,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 70, offset: Offset.fromDirection(1))]),
                  child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                    child: Image.network(
                      "https://firebasestorage.googleapis.com/v0/b/adventureweb-81601.appspot.com/o/rajesh_portrait.jpeg?alt=media&token=7741cd03-16f3-4fef-aaf9-27c928adedc9",
                      filterQuality: FilterQuality.medium,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Rajesh Kumar M',
                      style:
                          TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900, letterSpacing: 1),
                    ),
                    Text(
                      'Flutter| Dart2,\nReact-Native| JavaScript,\nSwift 3.3| iOS',
                      style:
                          TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900, letterSpacing: 1),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
          Projects(),
          Spacer(),
        ],
      ),
      SizedBox(height: 25),

      SizedBox(height: 25),
    ]);
  }
}

class Projects extends StatelessWidget {
  const Projects({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Align(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              "Projects",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
            SizedBox(
              height: 25,
            ),
            Text("Loop Clinical Softworks"),
            Row(
              children: <Widget>[
                Text(
                  "AppStore:  ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod(
                        "open", ["https://apps.apple.com/us/app/loop-clinical-softworks/id1286746894?ls=1"]);
                  },
                  child: Text(
                    "https://apps.apple.com/us/app/loop-clinical-softworks/id1286746894?ls=1",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontFamily: "FFF"),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "PlayStore:  ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod(
                        "open", ["https://play.google.com/store/apps/details?id=com.clinicalsoftworks.loop"]);
                  },
                  child: Text(
                    "https://play.google.com/store/apps/details?id=com.clinicalsoftworks.loop",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontFamily: "FFF"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text("AIstrology"),
            Row(
              children: <Widget>[
                Text(
                  "AppStore:  ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", ["https://apps.apple.com/in/app/aistrology/id1439179212"]);
                  },
                  child: Text(
                    "https://apps.apple.com/in/app/aistrology/id1439179212",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontFamily: "FFF"),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "PlayStore:  ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    js.context
                        .callMethod("open", ["https://play.google.com/store/apps/details?id=com.highpeaksw.rishi"]);
                  },
                  child: Text(
                    "https://play.google.com/store/apps/details?id=com.highpeaksw.rishi",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontFamily: "FFF"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text("PeakSpeak"),
            Row(
              children: <Widget>[
                Text(
                  "AppStore:  ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://apps.apple.com/in/app/peakspeak/id1345397735",
                    ]);
                  },
                  child: Text(
                    "https://apps.apple.com/in/app/peakspeak/id1345397735",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontFamily: "FFF"),
                  ),
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Text(
                  "PlayStore:  ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    js.context
                        .callMethod("open", ["https://play.google.com/store/apps/details?id=com.highpeaksw.peakspeak"]);
                  },
                  child: Text(
                    "https://play.google.com/store/apps/details?id=com.highpeaksw.peakspeak",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontFamily: "FFF"),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Text("WeatherAlarm"),
            Row(
              children: <Widget>[
                Text(
                  "GitHub:  ",
                  style: TextStyle(fontSize: 18),
                ),
                GestureDetector(
                  onTap: () {
                    js.context.callMethod("open", [
                      "https://github.com/rajeshzmoke/Weather_Alarm",
                    ]);
                  },
                  child: Text(
                    "https://github.com/rajeshzmoke/Weather_Alarm",
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.blueAccent,
                        decoration: TextDecoration.underline,
                        fontFamily: "FFF"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
