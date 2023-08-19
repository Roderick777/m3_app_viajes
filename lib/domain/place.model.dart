class PlaceModel {
  const PlaceModel(
      {this.title = '',
      this.description = '',
      this.id = 0,
      this.lat = 0,
      this.lng = 0,
      this.zoom = 1,
      this.image = '',
      this.country = ''});

  final String title;
  final String description;
  final int id;
  final double lat;
  final double lng;
  final double zoom;
  final String image;
  final String country;

  factory PlaceModel.fromJson(dynamic json) {
    return PlaceModel(
      title: json['title'],
      description: json['description'],
      id: json['id'] as int,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      zoom: (json['zoom'] as num).toDouble(),
      image: json['image'],
      country: json['country'],
    );
  }

  Map<String, dynamic> toJsonWithoutId() {
    return {
      'title': title,
      'description': description,
      'lat': lat,
      'lng': lng,
      'zoom': zoom,
      'image': image,
      'country': country,
    };
  }
}
