import 'package:kezza_weather/model/CurrentLocationData.dart';
import 'package:location/location.dart';
import 'package:flutter/services.dart';

class LocationApi {

  Location _location = Location();
  String error;

  static LocationApi _instance;
  static LocationApi getInstance() => _instance ??= LocationApi();

  Future<CurrentLocationData> getLocation() async {

    Map<String, dynamic> location;
    // LocationData location;

    try {
      location = (await _location.getLocation()) as Map<String, dynamic>;
      error = null;
    } on PlatformException catch (e) {
      if(e.code == 'PERMISSION_DENIED') {
        error = 'Permission denied';
      } else if(e.code == 'PERMISSION_DENIED_NEVER_ASK') {
        error = 'Permission denied - please ask the user to enable it from the app settings';
      }
      location = null;
    }
    print('location follows');
    print(location);
    return CurrentLocationData.locationItems(location);
  }
}
