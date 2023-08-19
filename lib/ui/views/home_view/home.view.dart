import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:m3_app_viajes/data/services/place.service.dart';
import 'package:m3_app_viajes/domain/place.model.dart';
import 'package:m3_app_viajes/ui/components/layouts/custom_scaffold.widget.dart';
import 'package:m3_app_viajes/ui/views/detail_view/detail.view.dart';
import 'package:m3_app_viajes/ui/views/home_view/components/header_painter_waves.component.dart';
import 'package:m3_app_viajes/ui/views/home_view/components/place_card.component.dart';
import 'package:m3_app_viajes/utils/platform.util.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<PlaceModel> _places = [];

  @override
  void initState() {
    super.initState();
    getPlaces();
  }

  Future<void> getPlaces() async {
    List<PlaceModel> res = await PlaceService().list();
    setState(() {
      _places = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomScaffold(
        mainAction: () {},
        title: const Text('Travel App'),
        child: Stack(
          children: [
            SizedBox(
              height: size.height,
              width: size.width,
              child: isMainPlatform() ? const Text('') : CustomPaint(painter: HeaderPaintWaves()),
            ),
            SizedBox(
              width: size.width,
              height: size.height,
              child: ListView.builder(
                itemCount: _places.length,
                itemBuilder: (BuildContext c, int i) {
                  PlaceModel element = _places[i];

                  if (element.title == '' && element.description == '') {
                    return SizedBox(
                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
                        child: Wrap(
                          spacing: 3,
                          children: [
                            Text(
                              'Travel App',
                              style: GoogleFonts.dancingScript(
                                fontSize: 40,
                                color: isMainPlatform() ? Colors.blue : Colors.white,
                              ),
                            ),
                            const Icon(Icons.sunny, color: Colors.amber),
                          ],
                        ),
                      ),
                    );
                  } else {
                    return PlaceCardComponent(
                      place: element,
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailView(place: element),
                          ),
                        );
                      },
                    );
                  }
                },
              ),
            ),
          ],
        ));
  }
}
