class PlaceModel {
  const PlaceModel({
    this.title = '',
    this.description = '',
    this.id = 0,
    this.lat = 0,
    this.lng = 0,
    this.zoom = 1,
    this.image = '',
  });

  final String title;
  final String description;
  final int id;
  final double lat;
  final double lng;
  final double zoom;
  final String image;

  factory PlaceModel.fromJson(dynamic json) {
    return PlaceModel(
      title: json['title'],
      description: json['description'],
      id: json['id'] as int,
      lat: (json['lat'] as num).toDouble(),
      lng: (json['lng'] as num).toDouble(),
      zoom: (json['zoom'] as num).toDouble(),
      image: json['image'],
    );
  }
}
