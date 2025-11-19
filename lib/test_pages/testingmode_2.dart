import 'package:cco_test/test_pages/testingmode_contoller.dart';
import 'package:cco_test/utilities/fontsize_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Testingmode2 extends StatefulWidget {
  const Testingmode2({super.key});

  @override
  State<Testingmode2> createState() => _Testingmode2State();
}

class _Testingmode2State extends State<Testingmode2> {
  final Testingmode2controller controller = Get.put(Testingmode2controller());

  @override
  Widget build(BuildContext context) {

    //final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    double containerHeight;
    double resultBox;
      if (screenHeight < 800) {
        containerHeight = screenHeight * .17;
        resultBox = screenHeight * 0.14;
      } else if (screenHeight < 1000) {
        containerHeight = screenHeight * 0.12;
        resultBox = screenHeight * 0.08;
      } else {
        containerHeight = screenHeight * 0.1; // For iPads & tablets
        resultBox = screenHeight * 0.09;
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
                left: 100,
                right: 100,
                child: Center(
                  child: Text("Testing Mode",
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
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withValues(alpha: 100),
                                  blurRadius: 10,
                                  offset: Offset(1, 5),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Column(
                                children: [

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text("Remaining Time",
                                      style: TextStyle(
                                            fontSize: ResponsiveFont.getFontSize(context, 15),
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                            fontFamily: "Montserrat",
                                          ),
                                        ), 
                                      Container(
                                        width: 80,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          color: Color(0xFF6AFF6A),
                                        ),
                                        child: Center(
                                          child: Text("ONLINE",
                                            style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 15),
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white,
                                                  fontFamily: "Montserrat",
                                                ),
                                             ),
                                        ), 
                                      )

                                    ],
                                  ),

                                  SizedBox(height: 10,),

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [

                                      Column(
                                        spacing: 0,
                                        children: [
                                          Text("2",
                                            style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 20),
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF9810FA),
                                                  fontFamily: "Montserrat",
                                                ),
                                             ),
                                          Text("hour",
                                            style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 12),
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF666666),
                                                  fontFamily: "Montserrat",
                                                ),
                                             ),
                                        ],
                                      ),

                                      Container(
                                        height: 30,
                                        width: 1,
                                        color: Color(0xFF666666),
                                      ),

                                      Column(
                                        spacing: 0,
                                        children: [
                                          Text("25",
                                            style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 20),
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFFF54A00),
                                                  fontFamily: "Montserrat",
                                                ),
                                             ),
                                          Text("minutes",
                                            style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 12),
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF666666),
                                                  fontFamily: "Montserrat",
                                                ),
                                             ),
                                        ],
                                      ),

                                      Container(
                                        height: 30,
                                        width: 1,
                                        color: Color(0xFF666666),
                                      ),

                                      Column(
                                        spacing: 0,
                                        children: [
                                          Text("32",
                                            style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 20),
                                                  fontWeight: FontWeight.bold,
                                                  color: Color(0xFF00A63E),
                                                  fontFamily: "Montserrat",
                                                ),
                                             ),
                                          Text("seconds",
                                            style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 12),
                                                  fontWeight: FontWeight.normal,
                                                  color: Color(0xFF666666),
                                                  fontFamily: "Montserrat",
                                                ),
                                             ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 30,),

                          Container(
                            width: 600,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withValues(alpha: 100),
                                  blurRadius: 10,
                                  offset: Offset(1, 5),
                                ),
                              ],
                            ),
                            child: Card(
                              color: Color(0xFFDDDDDD),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.all(20.0),
                                    child: Center(
                                      child: Text(
                                        "Question 01/192",
                                        style: TextStyle(
                                          fontSize: ResponsiveFont.getFontSize(context, 16),
                                          fontWeight: FontWeight.bold,
                                          color: Colors.black,
                                          fontFamily: "Montserrat",
                                        ),
                                      ),
                                    ),
                                  ),

                                  Container(
                                    decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.vertical(
                                        bottom: Radius.circular(20),
                                      ),
                                      color: Colors.white,
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "In order to protect the title agan appean appear here and the height will automatically adjust asar here and the height will automatically adjust asainst a mechanics lien, an owner could post and record which of the following document an appear here and the height will automatically adjust as",
                                            style: TextStyle(
                                              fontSize: ResponsiveFont.getFontSize(context, 20),
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black,
                                              fontFamily: "Montserrat",
                                            ),
                                            textAlign: TextAlign.justify,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(height: 40,),

                          Obx(() =>
                            Column(
                              children: List.generate(
                                controller.answerList.length,
                                (index) {
                                  final plan = controller.answerList[index];
                                  final bool isSelected = controller.selectedIndex.value == index;
                                  return GestureDetector(
                                    onTap: () {
                                      controller.answerSelect(index);
                                    },
                                    child: Container(
                                      height: containerHeight, //remove this to ynamically change with answer size
                                      width: 600,
                                      margin: const EdgeInsets.only(bottom: 20),//spacing between the grid items
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: isSelected ? Color(0xFFDAFFE0) : Colors.white,
                                        border: Border.all(
                                          color: isSelected ? Color(0xFFDAFFE0) : Color(0xFF606060).withAlpha(100),
                                          width: 1,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Row(
                                          children: [ 
                                            Expanded(
                                              child: Text(
                                                plan['answers'],
                                                style: TextStyle(
                                                  fontSize: ResponsiveFont.getFontSize(context, 18),
                                                  fontWeight: FontWeight.w500,
                                                  color:Colors.black,
                                                  fontFamily: 'Montserrat',
                                                ),
                                                overflow: TextOverflow.clip,
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),

                                            SizedBox(width: 10,),

                                            Obx(() => 
                                              Transform.scale(
                                                scale: 1.6,
                                                child: Checkbox(
                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                                  side: BorderSide(color: Color(0xFF606060).withAlpha(100), width: 0.5),
                                                  checkColor: Colors.white,
                                                  activeColor: Color(0xFF27BB2E),
                                                  value: controller.selectedIndex.value == index,
                                                  onChanged: (bool? newValue) {
                                                    controller.selectedIndex.value =
                                                        newValue == true ? index : -1;
                                                  },
                                                ),
                                              )
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ),
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
                            onPressed: (){
                              Get.toNamed('/testing3');
                            },
                            child: Text("Next",
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
                              Get.toNamed('/testing1');
                            },
                            child: Text("Cancel",
                              style: TextStyle(
                                fontSize: ResponsiveFont.getFontSize(context, 16),
                                color: Colors.black,
                                fontFamily: "Montserrat",
                                fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                        ),

                        SizedBox(height: 20,),

                        SizedBox(
                          width: 600,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: resultBox,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withValues(alpha: 100),
                                      blurRadius: 10,
                                      offset: Offset(1, 5),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("24",
                                        style: TextStyle(
                                          fontSize: ResponsiveFont.getFontSize(context, 18),
                                          color: Colors.black.withAlpha(100),
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Expanded(
                                        child: Text("Answered Questions",
                                          style: TextStyle(
                                            fontSize: ResponsiveFont.getFontSize(context, 14),
                                            color: Colors.black,
                                            fontFamily: "Montserrat",
                                            fontWeight: FontWeight.bold,
                                          ),
                                          maxLines: 2,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              
                              Container(
                                width: resultBox,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.withValues(alpha: 100),
                                      blurRadius: 10,
                                      offset: Offset(1, 5),
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("24",
                                        style: TextStyle(
                                          fontSize: ResponsiveFont.getFontSize(context, 18),
                                          color: Colors.black.withAlpha(100),
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      Text("Answered Questions",
                                        style: TextStyle(
                                          fontSize: ResponsiveFont.getFontSize(context, 14),
                                          color: Colors.black,
                                          fontFamily: "Montserrat",
                                          fontWeight: FontWeight.bold,
                                        ),
                                          maxLines: 2,
                                          softWrap: true,
                                          overflow: TextOverflow.visible,
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
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
