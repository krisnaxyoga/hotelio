import 'package:get/get.dart';
import 'package:hoteltutorial/model/hotel.dart';
import 'package:hoteltutorial/source/hotel_source.dart';

class CNearby extends GetxController {
  final _category = 'All place'.obs;
  String get category => _category.value;

  set category(n) {
    _category.value = n;
    update();
  }

  List<String> categories = [
    'All place',
    'Industrial',
    'Village',
  ];
  final _listHotel = <Hotel>[].obs;
  List<Hotel> get listHotel => _listHotel.value;

  getListHotel() async {
    _listHotel.value = await HotelSource.getHotel();
    update();
  }

  @override
  void onInit() {
    getListHotel();
    super.onInit();
  }
}
