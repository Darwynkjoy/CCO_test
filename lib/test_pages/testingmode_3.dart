import 'package:cco_test/test_pages/testingmode_contoller.dart';
import 'package:cco_test/utilities/fontsize_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Testingmode3 extends StatefulWidget {
  const Testingmode3({super.key});

  @override
  State<Testingmode3> createState() => _Testingmode3State();
}

class _Testingmode3State extends State<Testingmode3> {
  final Testingmode3controller controller = Get.put(Testingmode3controller());

  @override
  Widget build(BuildContext context) {

    //final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    //dinamic container height for the question box
    double containerHeight;
    double resultBox;
      if (screenHeight < 800) {
        containerHeight = screenHeight * .095;
        resultBox = screenHeight * 0.07;
      } else if (screenHeight < 1000) {
        containerHeight = screenHeight * 0.08;
        resultBox = screenHeight * 0.06;
      } else {
        containerHeight = screenHeight * 0.07; // For iPads & tablets
        resultBox = screenHeight * 0.055;
      }
      
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
                      onPressed: (){
                        Get.back();
                      },
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
                left: 90,
                right: 90,
                child: Center(
                  child: Text("Mock test result",
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
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [       
                  Container(
                    width: double.infinity,
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height - 130, // fills below area when viewed in devices large screen error fix
                    ),
                    decoration: BoxDecoration(
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
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withValues(alpha: 100),
                                  blurRadius: 10,
                                  offset: Offset(1, 1),
                                ),
                              ],
                            ),
                            child: Card(
                              color: Color(0xFFFFE7E7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    width: 600,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        top: Radius.circular(20),
                                      ),
                                      color: Colors.white
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Center(
                                            child: Text(
                                              "Sorry better luck next time",
                                              style: TextStyle(
                                                fontSize: ResponsiveFont.getFontSize(context, 20),
                                                fontWeight: FontWeight.bold,
                                                color: Color(0xFFCF0829),
                                                fontFamily: "Montserrat",
                                              ),
                                              textAlign: TextAlign.justify,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Center(
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children:[ 
                                          Text(
                                            "Overall percentage",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 20),
                                              fontWeight: FontWeight.bold,
                                              color: Color(0xFF595959),
                                              fontFamily: "Montserrat",
                                            ),
                                        ),
                                        Text(
                                            "0%",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 25),
                                              fontWeight: FontWeight.normal,
                                              color:  Colors.black,
                                              fontFamily: "Montserrat",
                                            ),
                                        ),
                                        ]
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 40,),

                          SizedBox(
                            width: 600,
                            child: 
                              ListView.separated(                     
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemBuilder: (context, item) {
                                  final texts = controller.subjectList[item];
                                    return Container(
                                      height: containerHeight,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),
                                        color: Colors.white,
                                        boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withValues(alpha: 100),
                                        blurRadius: 5,
                                        offset: Offset(1, 1),
                                        ),
                                      ],
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [
                                            Expanded(
                                              child: Text(
                                              texts['subjects'],
                                              style: TextStyle(
                                                fontSize: ResponsiveFont.getFontSize(context, 16),
                                                fontWeight: FontWeight.normal,
                                                color:Colors.black,
                                                fontFamily: 'Montserrat',
                                              ),
                                              overflow: TextOverflow.clip,
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          Container(
                                            height: resultBox,
                                            width: resultBox * 1.2,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(5),
                                              color: Color(0xFFABC2E3)
                                            ),
                                            child: Center(
                                              child: Text("0%",
                                                style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 24),
                                                  fontWeight: FontWeight.normal,
                                                  color:Colors.black,
                                                  fontFamily: 'Montserrat',
                                                ),
                                                overflow: TextOverflow.clip,
                                              ),
                                            ),
                                           )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                separatorBuilder: (context, item) => SizedBox(height: 20),
                                itemCount: controller.subjectList.length,
                              ),
                            ),

                          SizedBox(height: 40,),

                          SizedBox(
                            width: 600,
                            height: 60,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFFCF0829),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(40)
                                ),
                              ),
                              onPressed: (){},
                              child: Text("Review missed questions",
                                style: TextStyle(
                                  fontSize: ResponsiveFont.getFontSize(context, 16),
                                  color: Colors.white,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                          ),

                          SizedBox(height: 20,),

                          // end button.
                          SizedBox(
                            height: 60, // next button size.
                            width: 600,
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
                                Get.toNamed('testing1');
                              },
                              child: Text("Close",
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