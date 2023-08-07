import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  const CustomImage({
    super.key,
    required this.url,
    this.placeholder = const CircularProgressIndicator(),
  });
  final Widget placeholder;
  final String url;

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: widget.url,
      placeholder: (context, url) => widget.placeholder,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
