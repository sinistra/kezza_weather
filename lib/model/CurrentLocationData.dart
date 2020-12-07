class CurrentLocationData {
  final double lat;
  final double lon;

  CurrentLocationData(this.lat, this.lon);

  static CurrentLocationData locationItems(Map<String, double> location) {
    double lat = location['latitude'];
    double lon = location['longitude'];

    return CurrentLocationData(lat, lon);
  }
}

