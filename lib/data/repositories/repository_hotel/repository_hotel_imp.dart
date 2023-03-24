// Project imports:
import 'package:app_perfomance/data/models/api_hotel_detailed/api_hotel_detailed.dart';
import 'package:app_perfomance/data/repositories/repository_hotel/repository_hotel.dart';
import 'package:app_perfomance/data/services/service_http.dart';

class RepositoryHotelImp extends RepositoryHotel {
  const RepositoryHotelImp();

  @override
  Future<ApiHotelDetailed?> getData(String uuid) async {
    ApiHotelDetailed? hotel;

    final response = await ServiceHttp.instance.get(uuid);

    if (response.statusCode == 200) {
      hotel = ApiHotelDetailed.fromJson(response.data);
    }

    return hotel;
  }
}
