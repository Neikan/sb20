// Project imports:
import 'package:app_perfomance/data/consts/urls.dart';
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/data/repositories/repository_hotels/repository_hotels.dart';
import 'package:app_perfomance/data/services/service_http.dart';

class RepositoryHotelsImp extends RepositoryHotels {
  const RepositoryHotelsImp();

  @override
  Future<List<ApiHotel>> getData() async {
    List<ApiHotel> hotels = [];

    final response = await ServiceHttp.instance.get(urlHotels);

    if (response.statusCode == 200) {
      hotels = List.from(response.data)
          .map((hotel) => ApiHotel.fromJson(hotel))
          .toList();
    }

    return hotels;
  }
}
