import 'package:cco_test/utilities/fontsize_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ClassroomPage2 extends StatefulWidget {
  const ClassroomPage2({super.key});

  @override
  State<ClassroomPage2> createState() => _ClassroomPage2State();
}

class _ClassroomPage2State extends State<ClassroomPage2> {

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
                      Get.toNamed('/classroom1'),
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
                        padding: EdgeInsetsGeometry.symmetric(horizontal:  20,vertical:  50),
                        child: Column(
                          children: [
                            Container(
                              width: 600,
                              height: screenHeight*.25,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(40),
                                image: DecorationImage(image: AssetImage('thumbnail of video here')),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withAlpha(200), // shadow color
                                    blurRadius: 10,
                                    offset: Offset(0, 5)
                                  )
                                ]
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 20),
                                  child: Center(
                                    child: CircleAvatar(
                                      radius: screenHeight * 0.03,
                                      backgroundColor: Colors.white,
                                      child: Icon(
                                          Icons.play_arrow_rounded,size: screenHeight*.05,
                                            color: Color(0xFFCF0829),
                                            ),
                                    ),
                                  ),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 600,
                              child: Center(
                                child: Text("No description available!",
                                  style: TextStyle(
                                    fontSize: ResponsiveFont.getFontSize(context, 18),
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat', // font Montserrat
                                    overflow: TextOverflow.clip
                                    ),
                                    textAlign: TextAlign.justify,
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