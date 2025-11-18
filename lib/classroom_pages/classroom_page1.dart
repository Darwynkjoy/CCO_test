import 'package:cco_test/classroom_pages/classroom_contoller.dart';
import 'package:cco_test/utilities/fontsize_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ClassroomPage1 extends StatefulWidget {
  const ClassroomPage1({super.key});

  @override
  State<ClassroomPage1> createState() => _ClassroomPage1State();
}

class _ClassroomPage1State extends State<ClassroomPage1> {
  final ClassroomContoller controller = Get.put(ClassroomContoller());


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
                  child: Text("Classroom",
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
                              constraints: BoxConstraints(
                                maxHeight: screenHeight * 0.18,
                              ),
                              width: 600,
                              height: screenHeight*.2,
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
                                padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text("Please select category",
                                      style: TextStyle(
                                        fontSize: ResponsiveFont.getFontSize(context, 20),
                                        fontWeight: FontWeight.normal,
                                        color: Colors.black,
                                        fontFamily: 'Montserrat', // font Montserrat
                                        ),
                                      ),
                                              
                                    Container(
                                          height: screenHeight * 0.06,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            border: Border.all(width: 1, color: Colors.grey.shade300),
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Obx(
                                              () => DropdownButton<String>(
                                                iconEnabledColor: Colors.black,
                                                dropdownColor: Colors.white,
                                                alignment: Alignment.center,
                                                borderRadius: BorderRadius.circular(10),
                                                value: controller.selectedPage.value,
                                                isExpanded: true,
                                                iconSize: screenHeight * 0.04,
                                                hint: Text(
                                                  'Select Category',
                                                  style: TextStyle(
                                                    fontSize: ResponsiveFont.getFontSize(context, 18),
                                                    color: Colors.black,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.normal,
                                                  ),
                                                ),
                                                items: controller.pages.map((String item) {
                                                  return DropdownMenuItem<String>(
                                                    value: item,
                                                    child: Center(
                                                      child: Text(item,
                                                        style: TextStyle(
                                                        fontSize: ResponsiveFont.getFontSize(context, 16),
                                                        color: Color(0xFF5E5E5E),
                                                        fontFamily: 'Montserrat',
                                                        fontWeight: FontWeight.bold,
                                                      ),
                                                      ),
                                                    ),
                                                  );
                                                }).toList(),
                                                onChanged: (String? newValue) {
                                                  controller.updateSelectedItem(newValue);
                                                },
                                                // Remove the underline.
                                                underline: SizedBox.shrink(),
                                              ),
                                            ),
                                          ),
                                        ),
                                  
                                  ],
                                ),
                              ),
                            ),

                            SizedBox(
                              height: screenHeight*.06,
                              ),

                            Container(
                                width: 600,
                                height: screenHeight*.35,
                                decoration: BoxDecoration(
                                  color: Color(0xFFFFF4E0),
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
                                  padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        children: [
                                          GestureDetector(
                                            onTap: () => Get.toNamed('/classroom2'),
                                            child: Container(
                                              height: screenHeight * 0.09, 
                                              width: screenHeight * 0.14, 
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(15),
                                                color: Colors.white,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.grey.withAlpha(200), // shadow color
                                                    blurRadius: 3,
                                                    offset: Offset(0, 1)
                                                  )
                                                ]
                                              ),
                                              child: Icon(
                                                Icons.play_arrow_rounded,size: screenHeight*.1*.5,
                                                color: Color(0xFFCF0829),
                                                ),
                                            ),
                                          ),

                                          SizedBox(
                                            width: 20,
                                          ),

                                          Expanded(
                                            child: Text("No description available!",
                                              style: TextStyle(
                                                fontSize: ResponsiveFont.getFontSize(context, 18),
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat', // font Montserrat
                                                overflow: TextOverflow.clip
                                                ),
                                                maxLines: 2,
                                              ),
                                          ),
                                        ],
                                      ),
                                      
                                      SizedBox(
                                        height: 20,
                                      ),

                                      Row(
                                        children: [
                                          Container(
                                            height: screenHeight*.06,
                                            width: screenHeight*.06,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.grey.withAlpha(200), // shadow color
                                                  blurRadius: 3,
                                                  offset: Offset(0, 1)
                                                )
                                              ]
                                            ),
                                            child: Icon(
                                              Icons.picture_as_pdf_rounded,size: screenHeight*.1*.4,
                                              color: Color(0xFFCF0829),
                                              ),
                                          ),

                                          SizedBox(
                                            width: 20,
                                          ),

                                          Text("Workbook",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 18),
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontFamily: 'Montserrat', // font Montserrat
                                              ),
                                            ),
                                        ],
                                      ),
                                      
                                      Divider(
                                        thickness: 1,
                                      ),

                                      Row(
                                        children: [
                                          Obx(() => Transform.scale(
                                            scale: screenHeight*.05/40, // Scale checkbox to desired size
                                            child: Checkbox(
                                              value: controller.isWatchedSelected.value,
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
                                                controller.isWatchedSelected.value = newValue ?? false;
                                              },
                                            ),
                                          )),

                                          Text("Mark as watched",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 16),
                                              fontWeight: FontWeight.normal,
                                              color: Colors.black,
                                              fontFamily: 'Montserrat', // font Montserrat
                                              ),
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              )
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