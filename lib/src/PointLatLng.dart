part of flutter_polyline_points;

/// A pair of latitude and longitude coordinates, stored as degrees.
class PointLatLng {

  /// Creates a geographical location specified in degrees [latitude] and
  /// [longitude].
  ///
  const PointLatLng(double latitude, double longitude)
      : assert(latitude != null),
        assert(longitude != null),
        this.latitude = latitude,
        this.longitude = longitude;

  /// The latitude in degrees.
  final double latitude;

  /// The longitude in degrees
  final double longitude;

  dynamic _toJson() {
    return <double>[latitude, longitude];
  }

  static PointLatLng _fromJson(dynamic json) {
    if (json == null) {
      return null;
    }
    return PointLatLng(json[0], json[1]);
  }

  @override
  String toString() {
    return "lat: $latitude / longitude: $longitude";
  }
}