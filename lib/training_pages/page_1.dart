
import 'package:cco_test/training_pages/trainingpage_contoller.dart';
import 'package:cco_test/utilities/fontsize_contoller.dart';
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
                            fontSize: ResponsiveFont.getFontSize(context, 20),
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            fontFamily: 'Montserrat', // font Montserrat
                            ),
                          ),
                ),
              ),

              // Back Button
              Positioned(
                top: 50,
                right: 20,
                child:
                    IconButton(
                      onPressed: () {},
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      icon: Icon(
                        Icons.help_outline_rounded,
                        color: Colors.black,
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
                                      // Responsive height
                                      double containerHeight;
                                      if (screenHeight < 700) {
                                        containerHeight = screenHeight * 0.15;
                                      } else if (screenHeight < 1000) {
                                        containerHeight = screenHeight * 0.12;
                                      } else {
                                        containerHeight = screenHeight * 0.09; // For iPads & tablets
                                      }

                                      final plan = controller.subjectColor[index];
                                      return GestureDetector(
                                        onTap: () {
                                          Get.toNamed('/training2');
                                        },
                                        child: Container(
                                          height: containerHeight,
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
                                                    child: Text(
                                                      plan['description']!,
                                                      style: TextStyle(
                                                        fontSize: ResponsiveFont.getFontSize(context, 15),
                                                        fontWeight: FontWeight.w600,
                                                        color: Colors.black,
                                                        fontFamily: 'Montserrat',
                                                      ),
                                                      maxLines: 2,
                                                      overflow: TextOverflow.clip, 
                                                      softWrap: true, 
                                                    ),
                                                  ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                      );
                                    },
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