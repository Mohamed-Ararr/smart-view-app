import 'package:equatable/equatable.dart';

class Main extends Equatable {
  final String? cpuType;
  final double? displaySizeInch;
  final int? storageCapacityGb;
  final String? designColorName;

  const Main({
    this.cpuType,
    this.displaySizeInch,
    this.storageCapacityGb,
    this.designColorName,
  });

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        cpuType: json['cpu_type'] as String?,
        displaySizeInch: (json['display_size__inch'] as num?)?.toDouble(),
        storageCapacityGb: json['storage_capacity__gb'] as int?,
        designColorName: json['design_color_name'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'cpu_type': cpuType,
        'display_size__inch': displaySizeInch,
        'storage_capacity__gb': storageCapacityGb,
        'design_color_name': designColorName,
      };

  @override
  List<Object?> get props {
    return [
      cpuType,
      displaySizeInch,
      storageCapacityGb,
      designColorName,
    ];
  }
}
