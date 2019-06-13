import 'package:json_annotation/json_annotation.dart';

part 'news.g.dart';

@JsonSerializable()

class News {
    News(this.title);

    String title;
    @JsonKey(name: 'ga_prefix')
    String gaPrefix;
    List<String> images;
    bool multipic;
    int type;
    int id;

    factory News.fromJson(Map<String, dynamic> json) => _$NewsFromJson(json);
    Map<String, dynamic> toJson() => _$NewsToJson(this);
}