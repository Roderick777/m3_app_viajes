import 'package:flutter/material.dart';
import 'package:m3_app_viajes/domain/place.model.dart';
import 'package:m3_app_viajes/ui/components/buttons/circle_button.widget.dart';
import 'package:m3_app_viajes/ui/components/layouts/custom_scaffold.widget.dart';
import 'package:m3_app_viajes/ui/components/texts/custom_text.component.dart';
import 'package:m3_app_viajes/ui/views/detail_view/components/detail_actions.component.dart';
import 'package:m3_app_viajes/utils/platform.util.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.place});
  final PlaceModel place;

  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      title: Text(widget.place.title),
      mainAction: () {},
      child: ListView(
        children: [
          Hero(
            tag: 'profile-image${widget.place.id}',
            child: Container(
              height: 400.0,
              padding: const EdgeInsets.all(16),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.place.image),
                  fit: BoxFit.cover,
                ),
              ),
              child: Wrap(
                children: [
                  isMainPlatform()
                      ? const Text('')
                      : CircleButton(
                          size: 60,
                          color: Colors.black.withAlpha(50),
                          action: () => Navigator.pop(context),
                          child: const Icon(Icons.chevron_left, color: Colors.white, size: 28),
                        ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          DetailActions(place: widget.place),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10),
            child: CustomText(
              widget.place.description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Color(0xFF808080),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
