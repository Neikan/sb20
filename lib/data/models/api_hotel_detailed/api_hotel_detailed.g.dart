// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_hotel_detailed.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiHotelDetailed _$ApiHotelDetailedFromJson(Map<String, dynamic> json) =>
    ApiHotelDetailed(
      uuid: json['uuid'] as String,
      name: json['name'] as String,
      poster: json['poster'] as String,
      address:
          ApiHotelAddress.fromJson(json['address'] as Map<String, dynamic>),
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      photos:
          (json['photos'] as List<dynamic>).map((e) => e as String).toList(),
      services:
          ApiHotelServices.fromJson(json['services'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiHotelDetailedToJson(ApiHotelDetailed instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'poster': instance.poster,
      'address': instance.address,
      'price': instance.price,
      'rating': instance.rating,
      'services': instance.services,
      'photos': instance.photos,
    };
