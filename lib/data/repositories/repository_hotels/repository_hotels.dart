// Project imports:
import 'package:app_perfomance/data/models/api_hotel.dart';

abstract class RepositoryHotels {
  const RepositoryHotels();

  Future<List<ApiHotel>> getData();
}
