import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:m3_app_viajes/application/contants.dart';
import 'package:m3_app_viajes/domain/place.model.dart';
import 'package:m3_app_viajes/ui/components/buttons/circle_button.widget.dart';
import 'package:m3_app_viajes/ui/components/map/map.component.dart';
import 'package:m3_app_viajes/ui/components/texts/custom_text.component.dart';
import 'package:m3_app_viajes/utils/platform.util.dart';

class DetailActions extends StatefulWidget {
  const DetailActions({super.key, required this.place});
  final PlaceModel place;

  @override
  State<DetailActions> createState() => _DetailActionsState();
}

class _DetailActionsState extends State<DetailActions> {
  Marker getNewMarker(double lat, double lng) {
    return Marker(
      point: LatLng(lat, lng),
      builder: (ctx) => const Icon(Icons.place, color: kPrimaryColor),
    );
  }

  void _showMap() {
    Marker location = getNewMarker(widget.place.lat, widget.place.lng);
    LatLng center = LatLng(widget.place.lat, widget.place.lng);
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          child: SizedBox(
            width: double.infinity,
            height: 400.0,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: CustomText(
                    widget.place.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: CustomMap(markers: [location], center: center),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const CustomText(
                          'Cerrar',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void _showMapCupertino() {
    Marker location = getNewMarker(widget.place.lat, widget.place.lng);
    LatLng center = LatLng(widget.place.lat, widget.place.lng);
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          child: SizedBox(
            width: double.infinity,
            height: 400.0,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                  child: CustomText(
                    widget.place.title,
                    style: const TextStyle(fontSize: 20),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: CustomMap(markers: [location], center: center),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: const CustomText(
                          'Cerrar',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 20,
      alignment: WrapAlignment.center,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        CircleButton(
          size: 70,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.phone_outlined), CustomText('Llamar')],
          ),
          action: () {},
        ),
        CircleButton(
          size: 70,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.near_me_outlined), CustomText('Mapa')],
          ),
          action: () {
            if (isMainPlatform()) {
              _showMapCupertino();
            } else {
              _showMap();
            }
          },
        ),
        CircleButton(
          size: 70,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.search_outlined), CustomText('Web')],
          ),
          action: () {},
        )
      ],
    );
  }
}
