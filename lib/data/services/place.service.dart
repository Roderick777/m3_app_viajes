import 'package:m3_app_viajes/data/services/service.dart';
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
      'lat': 30.0094,
      'lng': 31.20861,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place1.jpg',
      'title': 'Egipto'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 2,
      'lat': 51.06,
      'lng': 1.80,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place2.jpg',
      'title': 'Stonehenge'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 3,
      'lat': 20.0,
      'lng': -70.0,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place3.jpg',
      'title': 'Caribe'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 4,
      'lat': -22,
      'lng': -43,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place4.jpg',
      'title': 'Copacabana'
    },
    {
      'description':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla aliquam porta turpis, ut convallis erat volutpat id. Fusce porta sagittis diam, vel tempor magna porta sed. Pellentesque condimentum eros lacinia nisl elementum aliquet. ',
      'id': 5,
      'lat': 45.5838,
      'lng': 11.7181,
      'zoom': 1,
      'image':
          'https://railsexample-production.up.railway.app/images/places/place5.jpg',
      'title': 'Roma'
    },
  ];

  static String urlBase = 'https://railsexample-production.up.railway.app/';

  Future<List<PlaceModel>> list() async {
    String url = '${urlBase}place';
    dynamic res = await Service.get<PlaceModel>(url);
    List<PlaceModel> response = [];
    print(res[0]['id']);

    for (int i = 0; i < places.length; i++) {
      response.add(PlaceModel.fromJson(res[i]));
    }
    return response;
  }
}
