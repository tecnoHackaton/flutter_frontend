import 'dart:async';

import 'package:custom_info_window/custom_info_window.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapPageScreen extends StatefulWidget {
  const MapPageScreen({Key? key}) : super(key: key);

  @override
  State<MapPageScreen> createState() => MapPageScreenState();
}

class MapPageScreenState extends State<MapPageScreen> {
  Completer<GoogleMapController> _controller = Completer();
  BitmapDescriptor? zalupa;
  bool isLoading = true;
  CustomInfoWindowController _customInfoWindowController =
      CustomInfoWindowController();
  final LatLng _latLng = LatLng(57.627732, 39.851561);

  @override
  void initState() {
    iconLoading();
    getPosition();
    super.initState();
  }

  void iconLoading() async {
    zalupa = await BitmapDescriptor.fromAssetImage(
        ImageConfiguration(), 'assets/marker.png');
    isLoading = false;
    setState(() {});
  }

  void getPosition() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    print(position.latitude);
    print(position.longitude);
  }

  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(57.627732, 39.851561),
    zoom: 17.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: isLoading
          ? Center(child: CircularProgressIndicator())
          : Stack(
              children: [
                GoogleMap(
                  onTap: (position) {
                    _customInfoWindowController.hideInfoWindow!();
                  },
                  onCameraMove: (position) {
                    _customInfoWindowController.onCameraMove!();
                  },
                  initialCameraPosition: _kGooglePlex,
                  onMapCreated: (GoogleMapController controller) {
                    _controller.complete(controller);
                    _customInfoWindowController.googleMapController =
                        controller;
                  },
                  markers: {
                    Marker(
                      markerId: MarkerId('1'),
                      position: LatLng(57.627732, 39.851561),
                      icon: zalupa!,
                      onTap: () {
                        _customInfoWindowController.addInfoWindow!(
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Image.asset('assets/code.png'),
                                      SizedBox(
                                        width: 8.0,
                                      ),
                                      Flexible(
                                        child: Column(
                                          children: [
                                            Text('QR-код'),
                                            Text('Информация о ЖК “Династия”',
                                            style: TextStyle(
                                              fontSize: 10
                                            ),)
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                              ),
                            ),
                          _latLng,
                        );
                      },
                    ),
                    Marker(
                      markerId: MarkerId('2'),
                      position: LatLng(57.627683, 39.852203),
                      icon: zalupa!,
                    ),
                  },
                ),
                CustomInfoWindow(
                  controller: _customInfoWindowController,
                  height: 75,
                  width: 150,
                  offset: 50,
                ),
              ],
            ),
    );
  }

  Future<void> _goToTheLake() async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(_kGooglePlex));
  }
}
