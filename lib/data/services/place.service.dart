import 'package:m3_app_viajes/domain/place.model.dart';

class PlaceService {
  List<Map<String, dynamic>> places = [
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 0,
      'lat': -33,
      'lng': -70,
      'zoom': 1,
      'image': '',
      'title': ''
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 1,
      'lat': -33,
      'lng': -70,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place1.jpg',
      'title': 'Lugar 1'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 2,
      'lat': -23,
      'lng': -60,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place2.jpg',
      'title': 'Lugar 2'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 3,
      'lat': -43,
      'lng': -80,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place3.jpg',
      'title': 'Lugar 3'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 4,
      'lat': -77,
      'lng': -10,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place4.jpg',
      'title': 'Lugar 4'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 5,
      'lat': -31,
      'lng': -65,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place5.jpg',
      'title': 'Lugar 5'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 6,
      'lat': -30,
      'lng': -64,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place1.jpg',
      'title': 'Lugar 6'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 7,
      'lat': -30,
      'lng': -62,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place2.jpg',
      'title': 'Lugar 7'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 8,
      'lat': -24,
      'lng': -46,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place3.jpg',
      'title': 'Lugar 8'
    }
  ];

  Future<List<PlaceModel>> list() async {
    await Future.delayed(const Duration(milliseconds: 500));
    List<PlaceModel> response = [];
    for (int i = 0; i < places.length; i++) {
      response.add(PlaceModel.fromJson(places[i]));
    }
    return response;
  }
}
