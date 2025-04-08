import 'datum.dart';

class AllCities {
  List<Datum>? data;
  String? message;
  List<dynamic>? error;
  int? status;

  AllCities({this.data, this.message, this.error, this.status});

  factory AllCities.fromJson(Map<String, dynamic> json) {
    return AllCities(
      data:
          (json['data'] as List<dynamic>?)
              ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
              .toList(),
      message: json['message'] as String?,
      error: json['error'] as List<dynamic>?,
      status: json['status'] as int?,
    );
  }
}
