import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _isgoogleFlex = CameraPosition(target: LatLng(33.983693, 71.509606 ),
  zoom: 14.4746,
  );
  List<Marker> _marker = [];
  final List<Marker> _list = const [
    Marker(markerId: MarkerId('1'),
      position: LatLng(33.983693, 71.509606 ),
      infoWindow: InfoWindow(
        title: 'My current location'
      )
    ),
    Marker(
      markerId: MarkerId('2'),
      position: LatLng(34.0682, 72.5308),
      infoWindow: InfoWindow(
        title: 'Marghuz Swabi'
      )
    ),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(34.2682, 72.5748),
        infoWindow: InfoWindow(
            title: 'Marghuz Swabi'
        )
    ),
    Marker(
        markerId: MarkerId('4'),
        position: LatLng(34.0422, 72.5308),
        infoWindow: InfoWindow(
            title: 'Marghuz Swabi'
        )
    ),
    Marker(
        markerId: MarkerId('5'),
        position: LatLng(34.0663, 72.5308),
        infoWindow: InfoWindow(
            title: 'Marghuz Swabi'
        )
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _marker.addAll(_list);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GoogleMap(
            initialCameraPosition: _isgoogleFlex,
          markers: Set<Marker>.of(_marker),
          mapType: MapType.normal,
          compassEnabled: true,
          myLocationEnabled: true,
          onMapCreated: (GoogleMapController controller){
              _controller.complete(controller);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.location_disabled_outlined),
        onPressed: () async{
          GoogleMapController controller = await _controller.future;
          controller.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: LatLng(33.983693, 71.509606 ),
              zoom: 13)),
          );
          setState(() {

          });
        },
      ),
    );
  }
}
