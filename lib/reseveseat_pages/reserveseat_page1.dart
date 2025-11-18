import 'package:cco_test/reseveseat_pages/reserveseat_contoller.dart';
import 'package:cco_test/utilities/fontsize_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReserveseatPage1 extends StatefulWidget {
  const ReserveseatPage1({super.key});

  @override
  State<ReserveseatPage1> createState() => _ReserveseatPage1State();
}

class _ReserveseatPage1State extends State<ReserveseatPage1> {
    final ReserveseatContoller controller = Get.put(ReserveseatContoller());

  @override
  Widget build(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
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
                      onPressed: () =>
                      Get.toNamed('/home'),
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
                  child: Text("Reserve seat",
                          style: TextStyle(
                            fontSize: ResponsiveFont.getFontSize(context, 20),
                            fontWeight: FontWeight.bold,
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
                            Container(
                                width: 600,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withAlpha(200), // shadow color
                                      blurRadius: 10,
                                      offset: Offset(0, 5)
                                    )
                                  ]
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Select the interested area in where at tending you theare class.",
                                        style: TextStyle(
                                          fontSize: ResponsiveFont.getFontSize(context, 18),
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: 'Montserrat', // font Montserrat
                                          overflow: TextOverflow.clip
                                          ),
                                        ),

                                      SizedBox(
                                        height: 30,
                                      ),

                                      Row(
                                        children: [
                                          Obx(() => Transform.scale(
                                            scale: screenHeight*.05/40, // Scale checkbox to desired size
                                            child: Checkbox(
                                              value: controller.isLiveStreamSelected.value,
                                              checkColor: Color(0xFFCF0829),
                                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                                (Set<WidgetState> states) {
                                                  // Always white background
                                                  return Colors.white;
                                                },
                                              ),
                                              side: WidgetStateBorderSide.resolveWith((Set<WidgetState> states) {
                                                // Keep black border in both states
                                                return BorderSide(color: Color(0xFF797979), width: 1);
                                              }),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              onChanged: (bool? newValue) {
                                                controller.isLiveStreamSelected.value = newValue ?? false;
                                              },
                                            ),
                                          )),

                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text("Live Stream",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 18),
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: 'Montserrat', // font Montserrat
                                              ),
                                            ),
                                        ],
                                      ),
                                      
                                      // keep distance between 2 checkboxes
                                      SizedBox(
                                        height: 10,
                                      ),
                                      
                                      Row(
                                        children: [
                                          Obx(() => Transform.scale(
                                            scale: screenHeight*.05/40, // Scale checkbox to desired size
                                            child: Checkbox(
                                              value: controller.isCaliforniaSelected.value,
                                              checkColor: Color(0xFFCF0829),
                                              fillColor: WidgetStateProperty.resolveWith<Color>(
                                                (Set<WidgetState> states) {
                                                  // Always white background
                                                  return Colors.white;
                                                },
                                              ),
                                              side: WidgetStateBorderSide.resolveWith((Set<WidgetState> states) {
                                                // Keep black border in both states
                                                return BorderSide(color: Color(0xFF797979), width: 1);
                                              }),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(4),
                                              ),
                                              onChanged: (bool? newValue) {
                                                controller.isCaliforniaSelected.value = newValue ?? false;
                                              },
                                            ),
                                          )),

                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text("California",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 18),
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: 'Montserrat', // font Montserrat
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
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
                                onPressed: (){
                                  Get.toNamed('/reserveseat2');
                                },
                                child: Text("GET CLASS LIST",
                                  style: TextStyle(
                                    fontSize: ResponsiveFont.getFontSize(context, 16),
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
                              onPressed: (){
                                Get.toNamed('/home');
                              },
                              child: Text("CANCEL",
                                style: TextStyle(
                                  fontSize: ResponsiveFont.getFontSize(context, 16),
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