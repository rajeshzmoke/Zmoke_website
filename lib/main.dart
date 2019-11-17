import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/waveAppBar.dart';

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
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: LoopAppBar(
          size: height * 0.3,
        ),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1200),
          child: ListView(shrinkWrap: true, children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Text("About"),
                SizedBox(width: 100),
                Text("Blog"),
                SizedBox(width: 100),
                Text("Contact"),
              ],
            ),

            // Image.network("https://www.bikesportnews.com/uploads/news_images/MEYM_031119__AX28361.jpg"),
            Container(
              height: 350,
              width: 350,
              alignment: Alignment.centerLeft,
              child: ClipOval(
                child: Image.network(
                  "https://firebasestorage.googleapis.com/v0/b/adventureweb-81601.appspot.com/o/DSC_6001%20rajesh__01.jpg?alt=media&token=de4cbd26-0255-497c-b840-041970800023",
                  filterQuality: FilterQuality.medium,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Flutter| Dart2,\nReact-Native| JavaScript,\nSwift| iOS',
                style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w900, letterSpacing: 1),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
