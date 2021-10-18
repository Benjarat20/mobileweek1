import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class PacLocation extends StatefulWidget {
  const PacLocation({Key? key}) : super(key: key);

  @override
  _PacLocationState createState() => _PacLocationState();
}

class _PacLocationState extends State<PacLocation> {
  dynamic latitude = "";
  dynamic longitude = "";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getLocation();
  }

  Future<void> getLocation() async {
    var location = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    print(location);
    print(location.latitude);
    print(location.longitude);

    setState(() {
      latitude = '${location.latitude}';
      longitude = '${location.longitude}';
    });

    //การแปลง ละติจูดกับลองจิจูด เป็นสถานที่จริง
    var address = await placemarkFromCoordinates(14.9165572, 100.1947952);

    print(address);
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Location",
          style: TextStyle(
            fontSize: 22,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "ละติจูด" + latitude,
              style: TextStyle(fontSize: 26),
            ),
            Text(
              "ลองจิจูด" + longitude,
              style: TextStyle(fontSize: 26),
            ),
          ],
        ),
      ),
    );
  }
}
