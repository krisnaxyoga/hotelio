import 'package:get/get.dart';

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
}
