
import 'package:cco_test/training_pages/trainingpage_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trainingpage1 extends StatefulWidget {
  const Trainingpage1({super.key});

  @override
  State<Trainingpage1> createState() => _Trainingpage1State();
}

class _Trainingpage1State extends State<Trainingpage1> {
  @override
  Widget build(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final Trainingpagecontroller controller = Get.put(Trainingpagecontroller());
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => FocusScope.of(context).unfocus(), // dismiss keyboard
          child: Stack(
            children: [
              /// Background Image
              Container(
                  width: double.infinity,
                  height: screenHeight,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Backhh.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
          
              // Back Button
              Positioned(
                top: 50,
                left: 20,
                child:
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      ),
                    ),
              ),
        
              Positioned(
                top: 60,
                left: 100,
                right: 100,
                child: Center(
                  child: Text("Training",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontFamily: 'Montserrat', // font Montserrat
                            ),
                          ),
                ),
              ),
          
              //  White Container with rounded top corners
              Padding(
                padding:
                  EdgeInsets.only(top: 130), // Push white container to desired height from the top of the screen.
                child: Column(
                  children: [       
                    Container(
                      width: double.infinity,
                      constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height - 130, // fills below area when viewed in devices large screen 
                      ),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsetsGeometry.symmetric(horizontal:  20,vertical:  30),
                        child: Column(
                          children: [
        
                                Column(
                                  children: List.generate(
                                    controller.subjectColor.length,
                                    (index) {
                                      final plan = controller.subjectColor[index];
                                      return GestureDetector(
                                        onTap: () {
                                          //  Toggle selection when tapping the container
                                          if (controller.selectedPlanIndex.value == index) {
                                            controller.selectedPlanIndex.value = -1; // unselect if already selected
                                          } else {
                                            controller.selectedPlanIndex.value = index; // select this container
                                          }
                                        },
                                        child: Obx(() => Container(
                                          height: 94,
                                          width: 600,
                                          margin: const EdgeInsets.only(bottom: 20),//spacing between the grid items
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withAlpha(200), // shadow color
                                                blurRadius: 4,   // softness of the shadow
                                                offset: Offset(0, 4), // horizontal & vertical offset
                                              ),
                                            ],
                                            borderRadius: BorderRadius.circular(20),
                                            color: plan['Color'],
                                          ),
                                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding: const EdgeInsets.all(4.0),
                                                      child: Text(
                                                        plan['description']!,
                                                        style: const TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w600,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                        ),
                                                        maxLines: 2,
                                                        overflow: TextOverflow.clip, 
                                                        softWrap: true, 
                                                      ),
                                                    ),
                                                  ),
                                                  Transform.scale(
                                                    scale: 1.8,
                                                    child: Checkbox(
                                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                      side: const BorderSide(color: Color(0xFF7F7F7F), width: 0.5),
                                                      checkColor: Color(0xFF27BB2E),
                                                      activeColor: Colors.white,
                                                      fillColor: WidgetStatePropertyAll(Colors.white),
                                                      value: controller.selectedPlanIndex.value == index,
                                                      onChanged: (bool? newValue) {
                                                        controller.selectedPlanIndex.value =
                                                            newValue == true ? index : -1;
                                                      },
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )),
                                      );
                                    },
                                  ),
                                ),
        
                                SizedBox(
                                  height: 50,
                                ),
        
                                
                                
                              // Submit button.
                                SizedBox(
                                  height: 60, // next button size.
                                  width: 500,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.circular(40)
                                      ),
                                    ),
                                    onPressed: (){
                                      Get.toNamed('/training2');
                                    },
                                    child: Text("Submit",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                ),
        
                              SizedBox(height: 30,),
        
                              SizedBox(
                                  height: 60, // next button size.
                                  width: 500,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.red,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.circular(40)
                                      ),
                                    ),
                                    onPressed: (){},
                                    child: Text("Help",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                ),
        
                              SizedBox(height: 30,),
        
                              // Cancel button.
                              SizedBox(
                                height: 60, // next button size.
                                width: 500,
                                child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                    shadowColor: Colors.white,
                                    side: BorderSide(color: Color(0xFF8D99AE)),
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadiusGeometry.circular(40)
                                    ),
                                  ),
                                  onPressed: (){},
                                  child: Text("Cancel",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: "Montserrat",
                                      fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}