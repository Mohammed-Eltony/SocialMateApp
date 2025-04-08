class Datum {
  int? id;
  String? name;
  String? code;
  int? countryId;
  String? country;
  String? currency;

  Datum({
    this.id,
    this.name,
    this.code,
    this.countryId,
    this.country,
    this.currency,
  });

  factory Datum.fromJson(Map<String, dynamic> json) {
    return Datum(
      id: json['id'] as int?,
      name: json['name'] as String?,
      code: json['code'] as String?,
      countryId: json['country_id'] as int?,
      country: json['country'] as String?,
      currency: json['currency'] as String?,
    );
  }
}
