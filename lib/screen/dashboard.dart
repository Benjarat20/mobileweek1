import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobileappweek1/config/constant.dart';
import 'package:mobileappweek1/model/tct.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

var data;

class _DashboardState extends State<Dashboard> {
  @override
  void initState() {
    super.initState();
    print("Hello");
    callAPI();
  }

  Future<void> callAPI() async {
    var url = Uri.parse("https://www.boredapi.com/api/activity");

    var response = await http.get(url);

    setState(() {
      data = tctFromJson(response.body);
    });

    //print(response.statusCode);
    //print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: sColor,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  fontSize: 28,
                  color: pColor,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Video',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.video_call,
                color: Colors.amber,
                size: 36,
              ),
              onTap: () {
                print('Menu Video');
                Navigator.pushNamed(context, 'Video');
              },
            ),
            ListTile(
              title: Text(
                'Image',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.image,
                color: Colors.blue,
                size: 36,
              ),
              onTap: () {
                print('Menu Image');
                Navigator.pushNamed(context, 'Image');
              },
            ),
            ListTile(
              title: Text(
                'Location',
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              leading: Icon(
                Icons.gps_fixed,
                color: Colors.pink,
                size: 36,
              ),
              onTap: () {
                print('Menu Location');
                Navigator.pushNamed(context, 'Location');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.api),
            SizedBox(width: 10),
            Text("Dashboard"),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Text(
                data?.activity ?? "loading...",
                style: TextStyle(
                  color: Colors.purple.shade200,
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
