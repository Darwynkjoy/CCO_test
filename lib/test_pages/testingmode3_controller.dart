import 'package:get/get.dart';

class Testingmode3controller extends GetxController {

  final List<Map<String, dynamic>> plans = [
  {
    "description": "Beneath ancient trees, shadows danced gently,",
  },
  {
    "description": "The carried whispers of forgotten dreams across the sleepy.",
  },
  {
    "description": "A silently, its bright eyes glimmering with unspoken wonder and secrets.",
  },
  {
    "description": "a softly, polishing stones smooth with years of patient persistence.",
  },
];

  final selectedIndex = RxnInt();


  final RxInt selectedPlanIndex = (-1).obs; // -1 means none selected
  final RxBool isChecked = false.obs;

  void selectPlan(int index) {
    selectedIndex.value = index;
    selectedPlanIndex.value = index;
    isChecked.value = true;
  }

}
