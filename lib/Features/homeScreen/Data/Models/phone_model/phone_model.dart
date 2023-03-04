import 'package:equatable/equatable.dart';

import 'main.dart';
import 'price.dart';

class PhoneModel extends Equatable {
  final int? id;
  final String? name;
  final String? mpn;
  final List<Price>? prices;
  final String? info;
  final Main? main;

  const PhoneModel({
    this.id,
    this.name,
    this.mpn,
    this.prices,
    this.info,
    this.main,
  });

  factory PhoneModel.fromJson(Map<String, dynamic> json) => PhoneModel(
        id: json['id'] as int?,
        name: json['name'] as String?,
        mpn: json['mpn'] as String?,
        prices: (json['prices'] as List<dynamic>?)
            ?.map((e) => Price.fromJson(e as Map<String, dynamic>))
            .toList(),
        info: json['info'] as String?,
        main: json['main'] == null
            ? null
            : Main.fromJson(json['main'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'mpn': mpn,
        'prices': prices?.map((e) => e.toJson()).toList(),
        'info': info,
        'main': main?.toJson(),
      };

  @override
  List<Object?> get props => [id, name, mpn, prices, info, main];
}
