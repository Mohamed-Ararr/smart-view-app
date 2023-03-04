import 'package:equatable/equatable.dart';

class Image extends Equatable {
  final String? url;

  const Image({this.url});

  factory Image.fromJson(Map<String, dynamic> json) => Image(
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'url': url,
      };

  @override
  List<Object?> get props => [url];
}
