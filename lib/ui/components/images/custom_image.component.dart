import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatefulWidget {
  const CustomImage({
    super.key,
    required this.url,
    this.placeholder = const CircularProgressIndicator(),
    this.height = double.infinity,
  });
  final Widget placeholder;
  final String url;
  final double height;

  @override
  State<CustomImage> createState() => _CustomImageState();
}

class _CustomImageState extends State<CustomImage> {
  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: widget.url,
      height: widget.height,
      placeholder: (context, url) => widget.placeholder,
      errorWidget: (context, url, error) => const Icon(Icons.error),
    );
  }
}
