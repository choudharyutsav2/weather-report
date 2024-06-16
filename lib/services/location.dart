import 'package:geolocator/geolocator.dart';


class Location{
  late double longitude;
  late double latitude;

  Future<void> getCurrentLocation()async{
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low);
      latitude=position.latitude;
      longitude=position.latitude;
    }
    catch(e){
      print(e);
    }
  }

}