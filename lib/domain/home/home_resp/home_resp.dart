import 'package:json_annotation/json_annotation.dart';

part 'home_resp.g.dart';

@JsonSerializable()
class HomeResp {
  @JsonKey(name: 'Name')
  String? name;
  @JsonKey(name: 'Img')
  String? img;

  HomeResp({
    this.name,
    this.img,
  });

  factory HomeResp.fromJson(Map<String, dynamic> json) {
    return _$HomeRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeRespToJson(this);
}
