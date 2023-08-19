import 'package:m3_app_viajes/data/services/service.dart';
import 'package:m3_app_viajes/domain/place.model.dart';

class PlaceService {
  static String urlBase = 'https://railsexample-production.up.railway.app/';

  Future<List<PlaceModel>> list() async {
    String url = '${urlBase}place';
    dynamic res = await Service.get<PlaceModel>(url);
    List<PlaceModel> response = [];
    for (int i = 0; i < res['place'].length; i++) {
      response.add(PlaceModel.fromJson(res['place'][i]));
    }
    return response;
  }

  Future<void> create(PlaceModel newPlace) async {
    String url = '${urlBase}place';
    dynamic res = await Service.post<PlaceModel>(url, newPlace.toJsonWithoutId());
    print(res);
  }
}
