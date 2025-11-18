import 'package:cco_test/utilities/fontsize_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReserveseatPage2 extends StatefulWidget {
  const ReserveseatPage2({super.key});

  @override
  State<ReserveseatPage2> createState() => _ReserveseatPage2State();
}

class _ReserveseatPage2State extends State<ReserveseatPage2> {

  @override
  Widget build(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
      
    double resultBox;
      if (screenHeight < 800) {
        resultBox = screenHeight * 0.09;
      } else if (screenHeight < 1000) {
        resultBox = screenHeight * 0.08;
      } else { // For iPads & tablets
        resultBox = screenHeight * 0.07;
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
                      onPressed: () =>
                      Get.toNamed('/reserveseat1'),
                      style: IconButton.styleFrom(
                        backgroundColor: Colors.white,
                      ),
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.black,
                      ),
                    ),
              ),

              //title
              Positioned(
                top: 60,
                left: 100,
                right: 100,
                child: Center(
                  child: Text("Class List",
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
                            Text("Live Stream",
                              style: TextStyle(
                                fontSize: ResponsiveFont.getFontSize(context, 24),
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                                fontFamily: 'Montserrat', // font Montserrat
                                overflow: TextOverflow.clip
                                ),
                              ),

                            SizedBox(
                              height: 20,
                            ),

                            SizedBox(
                              width: 600,
                              child: ListView.separated(
                                shrinkWrap: true, // allows ListView to size itself by its content
                                physics: const NeverScrollableScrollPhysics(), // disables inner scrollbar
                                itemCount: 2,
                                itemBuilder: (context, index) {
                                  return Container(
                                    width: 600,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFFFFF4E0),
                                      borderRadius: BorderRadius.circular(20),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey.withAlpha(200),
                                          blurRadius: 10,
                                          offset: const Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "05 September 2025",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 18),
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black,
                                              fontFamily: 'Montserrat',
                                              overflow: TextOverflow.clip,
                                            ),
                                          ),
                                          
                                          SizedBox(
                                            height: 20,
                                          ),

                                          Row(
                                            children: [
                                              // time container 1
                                              Container(
                                                height: resultBox,
                                                width: resultBox * 1.4,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Padding(
                                                  padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Begin time",
                                                        style: TextStyle(
                                                          fontSize: ResponsiveFont.getFontSize(context, 12),
                                                          fontWeight: FontWeight.normal,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                          overflow: TextOverflow.clip,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Text(
                                                        "9:00 AM",
                                                        style: TextStyle(
                                                          fontSize: ResponsiveFont.getFontSize(context, 16),
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                          overflow: TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              // schedule container container 2
                                              Container(
                                                height: resultBox,
                                                width: resultBox * 1.4,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Padding(
                                                  padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Scheduled",
                                                        style: TextStyle(
                                                          fontSize: ResponsiveFont.getFontSize(context, 12),
                                                          fontWeight: FontWeight.normal,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                          overflow: TextOverflow.clip,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Text(
                                                        "0",
                                                        style: TextStyle(
                                                          fontSize: ResponsiveFont.getFontSize(context, 16),
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                          overflow: TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),

                                              Spacer(),

                                              // total seat container 3
                                              Container(
                                                height: resultBox,
                                                width: resultBox * 1.4,
                                                decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  borderRadius: BorderRadius.circular(10)
                                                ),
                                                child: Padding(
                                                  padding:  EdgeInsets.symmetric(horizontal: 5,vertical: 8),
                                                  child: Column(
                                                    children: [
                                                      Text(
                                                        "Total seats",
                                                        style: TextStyle(
                                                          fontSize: ResponsiveFont.getFontSize(context, 12),
                                                          fontWeight: FontWeight.normal,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                          overflow: TextOverflow.clip,
                                                        ),
                                                      ),
                                                      Spacer(),
                                                      Text(
                                                        "10",
                                                        style: TextStyle(
                                                          fontSize: ResponsiveFont.getFontSize(context, 16),
                                                          fontWeight: FontWeight.bold,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                          overflow: TextOverflow.clip,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          
                                          SizedBox(
                                            height: 20,
                                          ),

                                          // Reserve seat button.
                                          SizedBox(
                                            height: screenHeight * .052, // next button size.
                                            width: double.infinity,
                                            child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                shadowColor: Colors.white,
                                                backgroundColor: Color(0xFFCF0829),
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadiusGeometry.circular(40)
                                                ),
                                              ),
                                              onPressed: (){},
                                              child: Text("RESERVE SEAT",
                                                style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 16),
                                                  color: Colors.white,
                                                  fontFamily: "Montserrat",
                                                  fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) => const SizedBox(height: 30),
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