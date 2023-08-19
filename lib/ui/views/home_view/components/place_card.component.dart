import 'package:flutter/material.dart';
import 'package:m3_app_viajes/domain/place.model.dart';
import 'package:m3_app_viajes/ui/components/texts/custom_text.component.dart';

class PlaceCardComponent extends StatefulWidget {
  const PlaceCardComponent({
    super.key,
    required this.place,
    required this.onTap,
  });
  final PlaceModel place;
  final void Function() onTap;

  @override
  State<PlaceCardComponent> createState() => _PlaceCardComponentState();
}

class _PlaceCardComponentState extends State<PlaceCardComponent> {
  @override
  Widget build(BuildContext context) {
    Size windowSize = MediaQuery.of(context).size;

    return SizedBox(
      width: windowSize.width,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: GestureDetector(
          onTap: () {
            widget.onTap();
          },
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: Colors.white,
              boxShadow: const [BoxShadow(blurRadius: 7, color: Colors.grey, spreadRadius: -4)],
            ),
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Wrap(
                      crossAxisAlignment: WrapCrossAlignment.center,
                      spacing: 10,
                      children: [
                        Hero(
                          tag: 'profile-image${widget.place.id}',
                          child: SizedBox(
                            height: 60,
                            width: 60,
                            child: CircleAvatar(
                              backgroundImage: NetworkImage(widget.place.image),
                            ),
                          ),
                        ),
                        CustomText(
                          widget.place.title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    child: CustomText(
                      widget.place.description,
                      style: const TextStyle(color: Color(0xFF808080)),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
