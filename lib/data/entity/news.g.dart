// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) {
  return News(json['title'] as String)
    ..gaPrefix = json['ga_prefix'] as String
    ..images = (json['images'] as List)?.map((e) => e as String)?.toList()
    ..multipic = json['multipic'] as bool
    ..type = json['type'] as int
    ..id = json['id'] as int;
}

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'title': instance.title,
      'ga_prefix': instance.gaPrefix,
      'images': instance.images,
      'multipic': instance.multipic,
      'type': instance.type,
      'id': instance.id
    };
