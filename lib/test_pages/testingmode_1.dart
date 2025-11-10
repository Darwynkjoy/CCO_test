import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Testingmode1 extends StatefulWidget {
  const Testingmode1({super.key});

  @override
  State<Testingmode1> createState() => _Testingmode1State();
}

class _Testingmode1State extends State<Testingmode1> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
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
                  child: Text("Testing Mode",
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
                        minHeight: MediaQuery.of(context).size.height - 100, // fills below area when viewed in devices large screen 
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
                            Text("Text Exam Rules",
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontFamily: "Montserrat",
                                ),
                                textAlign: TextAlign.justify,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 20.0),
                                child: Container(
                                constraints: const BoxConstraints(
                                  maxHeight: 900,
                                  maxWidth: 600,  
                                ),
                                
                                child: Text("""The morning breeze carried whispers of forgotten dreams across the sleepy, golden countryside hills. Beneath ancient trees, shadows danced gently, weaving stories only the wind could understand. A curious bird watched silently, its bright eyes glimmering with unspoken wonder and secrets. Somewhere nearby, a river hummed softly, polishing stones smooth with years of patient persistence. Old houses stood proudly, their walls echoing laughter and the scent of warm bread. Children chased butterflies through meadows, unaware of how precious those fleeting hours truly were.""",
                                  style: TextStyle(
                                    fontSize: 22,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                    fontFamily: 'Montserrat', // font Montserrat
                                  ),
                                  textAlign: TextAlign.justify,
                                ),
                                                            ),
                              ),

                            Padding(
                              padding: const EdgeInsets.all(40.0),
                              child: Container(
                                height: 2,
                                width: screenWidth * .40,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                                color: Colors.black
                                ),
                              ),
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
                                  Get.toNamed('/testing2');
                                },
                                child: Text("Start Exam",
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
                                child: Text("Previous Exam Results",
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