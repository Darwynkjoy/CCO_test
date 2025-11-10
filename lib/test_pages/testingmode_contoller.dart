import 'package:get/get.dart';

class Testingmode3controller extends GetxController {

  final List<Map<String, dynamic>> subjectList = [
  {
    "subjects": "Property Ownership and Land Use Controls and Regulations", //for page 3
  },
  {
    "subjects": "Laws of Agency",
  },
  {
    "subjects": "Valuation and Market Analysis",
  },
  {
    "subjects": "Financing",
  },
  {
    
    "subjects": "Transfer of Property",
  },
  {
    
    "subjects": "Practice of Real Estate and Mandated Disclosures",
  },
  {
    
    "subjects": "Valuvation and Market Analysis",
  },
  {
    
    "subjects": "Contracts",
  },
];
}

class Testingmode2controller extends GetxController {
// for page 2 answer selection
 final List<Map<String, dynamic>> answerList = [
  {
    "answers": "Beneath ancient trees, shadows danced gently,", //for page 1
  },
  {
    "answers": "The carried whispers of forgotten dreams across the sleepy.",
  },
  {
    "answers": "A silently, its bright eyes glimmering with unspoken wonder and secrets.",
  },
  {
    "answers": "a softly, polishing stones smooth with years of patient persistence.",
  },
  ];

// for page 2 answer selection
  final selectedIndex = (-1).obs;
  final RxInt selectedPlanIndex = (-1).obs; // -1 means none selected
  final RxBool isChecked = false.obs;

  void answerSelect(int index) {
    selectedIndex.value = index;
    selectedPlanIndex.value = index;
    isChecked.value = true;
  }

}
