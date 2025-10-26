import 'package:get/get.dart';

class Trainingpage2controller extends GetxController {

  final List<Map<String, dynamic>> plans = [
  {
    "description": "Property Ownership",
  },
  {
    "description": "Laws of Agency",
  },
  {
    "description": "Valuation and",
  },
  {
    "description": "Valuation and",
  },
];

  final selectedIndex = RxnInt();

  void selectPlan(int index) {
    selectedIndex.value = index;
  }

}
