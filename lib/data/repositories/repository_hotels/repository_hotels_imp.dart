// Project imports:
import 'package:app_perfomance/data/mock/data.dart';
import 'package:app_perfomance/data/models/api_hotel.dart';
import 'package:app_perfomance/data/repositories/repository_hotels/repository_hotels.dart';

class RepositoryHotelsImp extends RepositoryHotels {
  const RepositoryHotelsImp();

  // @override
  // Future<List<ApiHotel>> getData() async {
  //   List<ApiHotel> hotels = [];

  //   final response = await ServiceHttp.instance.get(urlHotels);

  //   if (response.statusCode == 200) {
  //     hotels = List.from(response.data)
  //         .map((hotel) => ApiHotel.fromJson(hotel))
  //         .toList();
  //   }

  //   return hotels;
  // }

  @override
  Future<List<ApiHotel>> getData() async {
    return List.from(rawHotels)
        .map((hotel) => ApiHotel.fromJson(hotel))
        .toList();
  }
}
