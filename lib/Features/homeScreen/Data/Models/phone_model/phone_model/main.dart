import 'package:equatable/equatable.dart';

class Main extends Equatable {
  final int? generalYear;
  final int? cpuNumberOfCores;
  final double? displaySizeInch;
  final int? storageCapacityGb;
  final String? designColorName;
  final String? cpuType;

  const Main({
    this.generalYear,
    this.cpuNumberOfCores,
    this.displaySizeInch,
    this.storageCapacityGb,
    this.designColorName,
    this.cpuType,
  });

  factory Main.fromJson(Map<String, dynamic> json) => Main(
        generalYear: json['general_year'] as int?,
        cpuNumberOfCores: json['cpu_number_of_cores'] as int?,
        displaySizeInch: (json['display_size__inch'] as num?)?.toDouble(),
        storageCapacityGb: json['storage_capacity__gb'] as int?,
        designColorName: json['design_color_name'] as String?,
        cpuType: json['cpu_type'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'general_year': generalYear,
        'cpu_number_of_cores': cpuNumberOfCores,
        'display_size__inch': displaySizeInch,
        'storage_capacity__gb': storageCapacityGb,
        'design_color_name': designColorName,
        'cpu_type': cpuType,
      };

  @override
  List<Object?> get props {
    return [
      generalYear,
      cpuNumberOfCores,
      displaySizeInch,
      storageCapacityGb,
      designColorName,
      cpuType,
    ];
  }
}
