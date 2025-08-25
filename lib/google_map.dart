import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Google_map extends StatefulWidget {
  const Google_map({super.key});

  @override
  State<Google_map> createState() => _Google_mapState();
}

class _Google_mapState extends State<Google_map> {
  final Completer<GoogleMapController> _controler = Completer();
  static final CameraPosition _kgoogleMap = CameraPosition(target: LatLng(37.4556345, 72.53536),
    zoom: 14.3436,
  );
  List<Marker> _marker = const [];
   final List<Marker> _list = [
    Marker(markerId: MarkerId('1'),
      position: LatLng(34.234, 45.3546),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        myLocationEnabled: true,
        markers: Set<Marker>.of(_marker),
        onMapCreated: (GoogleMapController controller){
          _controler.complete(controller);
        },
          initialCameraPosition: _kgoogleMap),
    );
  }
}
