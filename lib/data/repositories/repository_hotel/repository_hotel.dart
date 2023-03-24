// Project imports:
import 'package:app_perfomance/data/models/api_hotel_detailed/api_hotel_detailed.dart';

abstract class RepositoryHotel {
  const RepositoryHotel();

  Future<ApiHotelDetailed?> getData(String uuid);
}
