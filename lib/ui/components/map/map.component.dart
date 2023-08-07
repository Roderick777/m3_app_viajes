import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart'; // Suitable for most situations
import 'package:latlong2/latlong.dart';

class CustomMap extends StatefulWidget {
  const CustomMap({
    super.key,
    required this.markers,
    this.center = const LatLng(-33, -77),
  });
  final List<Marker> markers;
  final LatLng center;

  @override
  State<CustomMap> createState() => _CustomMapState();
}

class _CustomMapState extends State<CustomMap> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10.0),
          child: SizedBox(
            height: 300,
            width: double.infinity,
            child: FlutterMap(
              options: MapOptions(
                center: widget.center,
                zoom: 2,
              ),
              nonRotatedChildren: [
                // AttributionWidget.defaultWidget(
                //   source: '',
                //   onSourceTapped: null,
                // ),
              ],
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(markers: widget.markers),
              ],
            ),
          ),
        ));
  }
}
