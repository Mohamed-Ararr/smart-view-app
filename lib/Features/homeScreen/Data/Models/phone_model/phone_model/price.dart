import 'package:equatable/equatable.dart';

class Price extends Equatable {
  final double? price;
  final double? oldPrice;
  final String? currency;
  final String? url;

  const Price({this.price, this.oldPrice, this.currency, this.url});

  factory Price.fromJson(Map<String, dynamic> json) => Price(
        price: (json['price'] as num?)?.toDouble(),
        oldPrice: (json['old_price'] as num?)?.toDouble(),
        currency: json['currency'] as String?,
        url: json['url'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'price': price,
        'old_price': oldPrice,
        'currency': currency,
        'url': url,
      };

  @override
  List<Object?> get props => [price, oldPrice, currency, url];
}
