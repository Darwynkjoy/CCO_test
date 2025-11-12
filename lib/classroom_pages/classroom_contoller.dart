import 'package:get/get.dart';

 class ClassroomContoller extends GetxController {
  // Use RxString to make the selected item observable.
  final Rx<String?> selectedPage = Rx<String?>(null);

  // The list of items for the dropdown.
  final List<String> pages = <String>[
    'Pages 1 - 7',
    'Pages 8 - 14',
    'Pages 14 - 20',
  ];

  // A method to update the selected item.
  void updateSelectedItem(String? newValue) {
    selectedPage.value = newValue;
  }

  // Observable boolean to track whether the item was watched.
  final RxBool isWatchedSelected = false.obs;
  
  // Setter to update the observable.
  void setIsWatchedSelected(bool value) {
    isWatchedSelected.value = value;
  }
 }