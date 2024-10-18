// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? id;
  String? nameEn;
  String? nameAr;
  String? imageUrl;
  String? descriptionEn;
  String? descriptionAr;
  String? contentEn;
  String? contentAr;
  bool? isActive;

  Data({
    this.id,
    this.nameEn,
    this.nameAr,
    this.imageUrl,
    this.descriptionEn,
    this.descriptionAr,
    this.contentEn,
    this.contentAr,
    this.isActive,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    String? id,
    String? nameEn,
    String? nameAr,
    String? imageUrl,
    String? descriptionEn,
    String? descriptionAr,
    String? contentEn,
    String? contentAr,
    bool? isActive,
  }) {
    return Data(
      id: id ?? this.id,
      nameEn: nameEn ?? this.nameEn,
      nameAr: nameAr ?? this.nameAr,
      imageUrl: imageUrl ?? this.imageUrl,
      descriptionEn: descriptionEn ?? this.descriptionEn,
      descriptionAr: descriptionAr ?? this.descriptionAr,
      contentEn: contentEn ?? this.contentEn,
      contentAr: contentAr ?? this.contentAr,
      isActive: isActive ?? this.isActive,
    );
  }
}
