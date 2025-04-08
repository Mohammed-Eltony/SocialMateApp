

import 'package:social_mate/core/constants/endpoints.dart';
import 'package:social_mate/core/models/all_cities/all_cities.dart';
import 'package:social_mate/core/services/dio_helper.dart';

class GetAllCities {
  static AllCities? allCities;
  static Future<void> getAllCities() async {
    await DioHelper.getData(url: Endpoints.getAllCities)
        .then((onValue) {
          allCities = AllCities.fromJson(onValue.data);
        })
        .catchError((onError) {});
  }
}
