abstract class BlocHotelEvent {}

class BlocHotelEventInit extends BlocHotelEvent {
  final String uuid;

  BlocHotelEventInit(this.uuid);
}
