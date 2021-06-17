import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapDemo extends StatefulWidget {
  const MapDemo({Key? key}) : super(key: key);

  @override
  _MapDemoState createState() => _MapDemoState();
}

class _MapDemoState extends State<MapDemo> {

  static final LatLng _kMapCenter =
  LatLng(11.016844, 76.955833);

  static final CameraPosition _kInitialPosition =
  CameraPosition(target: _kMapCenter, zoom: 11.0, tilt: 0, bearing: 0);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          elevation: 0.00,
          title: Text(
            'MAPS'
          ),
          centerTitle: true,
        ),
        body: GoogleMap(
          initialCameraPosition: _kInitialPosition,
        ),
      ),
    );
  }
}
