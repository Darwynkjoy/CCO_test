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
                  decoration:  BoxDecoration(
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
                      decoration:  BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40),
                        ),
                      ),
                      // Inside the white container (replace only from child: Padding(...) onwards)
                      child: Padding(
                        padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // ---- HEADER ----
                            Center(
                              child: Text(
                                "Please select category",
                                style: TextStyle(
                                  fontSize: ResponsiveFont.getFontSize(context, 22),
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black87,
                                  fontFamily: 'Montserrat',
                                ),
                              ),
                            ),

                             SizedBox(height: 25),

                            // ---- DROPDOWN ----
                            Container(
                              height: screenHeight * 0.065,
                              width: 600,
                              padding:  EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                border: Border.all(width: 1, color: Colors.grey.shade300),
                                color: Colors.grey.shade50,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Center(
                                child: Obx(
                                  () => DropdownButton<String>(
                                    value: controller.selectedPage.value,
                                    hint: Text(
                                      'Select Category',
                                      style: TextStyle(
                                        fontSize: ResponsiveFont.getFontSize(context, 18),
                                        color: Colors.grey.shade700,
                                        fontFamily: 'Montserrat',
                                      ),
                                    ),
                                    icon:  Icon(Icons.keyboard_arrow_down_rounded,
                                        color: Colors.black54),
                                    underline:  SizedBox.shrink(),
                                    isExpanded: true,
                                    borderRadius: BorderRadius.circular(12),
                                    dropdownColor: Colors.white,
                                    items: controller.pages.map((String item) {
                                      return DropdownMenuItem<String>(
                                        value: item,
                                        child: Text(
                                          item,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontSize: ResponsiveFont.getFontSize(context, 16),
                                            color: Colors.black87,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                    onChanged: (String? newValue) {
                                      controller.updateSelectedItem(newValue);
                                    },
                                  ),
                                ),
                              ),
                            ),

                             SizedBox(height: 40),

                            // ---- CONTENT CARD ----
                            Container(
                              width: 600,
                              padding:  EdgeInsets.symmetric(horizontal: 20, vertical: 25),
                              decoration: BoxDecoration(
                                color:  Color(0xFFFFF4E0),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 10,
                                    offset:  Offset(0, 5),
                                  )
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // VIDEO ROW
                                  Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () => Get.toNamed('/classroom2'),
                                        child: Container(
                                          height: screenHeight * 0.085,
                                          width: screenHeight * 0.13,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.grey.withAlpha(220),
                                                blurRadius: 4,
                                                offset:  Offset(0, 2),
                                              )
                                            ],
                                          ),
                                          child: Icon(
                                            Icons.play_arrow_rounded,
                                            size: screenHeight * 0.06,
                                            color:  Color(0xFFCF0829),
                                          ),
                                        ),
                                      ),
                                       SizedBox(width: 20),
                                      Expanded(
                                        child: Text(
                                          "No description available!",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: ResponsiveFont.getFontSize(context, 18),
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black87,
                                            fontFamily: 'Montserrat',
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                   SizedBox(height: 25),

                                  // WORKBOOK ROW
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.picture_as_pdf_rounded,
                                        size: screenHeight * 0.04,
                                        color:  Color(0xFFCF0829),
                                      ),
                                       SizedBox(width: 15),
                                      Text(
                                        "Workbook",
                                        style: TextStyle(
                                          fontSize: ResponsiveFont.getFontSize(context, 18),
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black87,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ],
                                  ),

                                   SizedBox(height: 10),
                                   Divider(thickness: 1),

                                   SizedBox(height: 10),

                                  // CHECKBOX ROW
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