import 'package:get/get.dart';

 class ReserveseatContoller extends GetxController {
 
  // Observable boolean to track Livestream checkbox.
  final RxBool isLiveStreamSelected = false.obs;
  
  // Setter to update the observable.
  void setIsLiveStreamSelected(bool value) {
    isLiveStreamSelected.value = value;
  }

  // Observable boolean to track california checkbox
  final RxBool isCaliforniaSelected = false.obs;
  
  // Setter to update the observable.
  void setIsCaliforniaSelected(bool value) {
    isCaliforniaSelected.value = value;
  }

 }