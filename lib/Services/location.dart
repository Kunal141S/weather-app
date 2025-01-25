import 'package:geolocator/geolocator.dart';

class Location
{


    var latitude;
    var longitude;

  Future<void> getCurrentLocation()async{
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;
    }
    catch(e) {
      print(e);
    }
    }
  }
