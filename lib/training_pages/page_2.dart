import 'package:cco_test/training_pages/page2_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trainingpage2 extends StatefulWidget {
  const Trainingpage2({super.key});

  @override
  State<Trainingpage2> createState() => _Trainingpage2State();
}

class _Trainingpage2State extends State<Trainingpage2> {
  @override
  Widget build(BuildContext context) {
    final Trainingpage2controller controller = Get.put(Trainingpage2controller());
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
                      minHeight: MediaQuery.of(context).size.height - 150, // fills below area when viewed in devices large screen 
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

                          Text("Property Ownership and Land Use Controls and Regulations",
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              color: Color(0xFFCF0829),
                              fontFamily: "Montserrat",
                            ),
                            textAlign: TextAlign.center,
                          ),

                          SizedBox(height: 20,), // space between heading and card.

                          Container(
                              //height: screenheight * 0.65,
                              height: 650,
                              width: 550,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // the card shadow
                                  BoxShadow(
                                    color: Colors.grey.withAlpha(100),
                                    blurRadius: 10,
                                    offset: const Offset(1, 5),
                                  ),
                                ],
                              ),
                              child: Card(
                                color: Color(0xFFDDDDDD),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: Text("Question 01/192",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          fontFamily: "Montserrat",
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.vertical(
                                            bottom: Radius.circular(20),
                                          ),
                                          color: Colors.white                           
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 20.0,
                                            vertical: 20.0,
                                          ),
                                          child: Column(
                                            children: [

                                              Text("In order to protect the title against a mechanics lien, an owner could post and record which of the following documents",
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                                color: Colors.black,
                                                fontFamily: "Montserrat",
                                                ),
                                                textAlign: TextAlign.justify,
                                              ),

                                              SizedBox(
                                                height: 20,
                                              ),

                                              Obx(() =>
                                                Column(
                                                  children: List.generate(
                                                    controller.plans.length,
                                                    (index) {
                                                      final plan = controller.plans[index];
                                                      final bool isSelected = controller.selectedIndex.value == index;
                                                      return GestureDetector(
                                                        onTap: () {
                                                          controller.selectPlan(index);
                                                        },
                                                        child: Container(
                                                          height: 60,
                                                          width: 600,
                                                          margin: const EdgeInsets.only(bottom: 20),//spacing between the grid items
                                                          decoration: BoxDecoration(
                                                            borderRadius: BorderRadius.circular(10),
                                                            color: isSelected ? Color(0xFF00BA1F) : Colors.white,
                                                            border: Border.all(
                                                              color: isSelected ? Color(0xFF00BA1F) : Colors.grey,
                                                              width: 1,
                                                            ),
                                                          ),
                                                          child: Center(
                                                            child: Text(
                                                              plan['description']!,
                                                              style: TextStyle(
                                                                fontSize: 16,
                                                                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                                                                color: isSelected ? Colors.white : Colors.black,
                                                                fontFamily: 'Montserrat',
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),

                                              Spacer(),

                                              Container(
                                                alignment: Alignment.center,
                                                child: ElevatedButton(
                                                  onPressed: () {
                                                  },
                                                  style: ElevatedButton.styleFrom(
                                                    backgroundColor: const Color(0xFFF6F6F6),
                                                    elevation: 3,
                                                    shadowColor: Colors.grey.withAlpha(200),
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(30),
                                                    ),
                                                    fixedSize: const Size(600, 80),
                                                  ),
                                                  child: Row(
                                                    
                                                    children:[ 
                                                      Icon(Icons.play_circle_fill,
                                                        color: Colors.red,
                                                        size: 60,
                                                      ),
                                                      SizedBox(width: 20,),
                                                      Expanded(
                                                        child: Text("Watch the video for more details",
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontWeight: FontWeight.w500,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                        ),
                                                        maxLines: 2,                     // ✅ Limit to 2 lines
                                                        overflow: TextOverflow.clip, // ✅ Add "..." if it still overflows
                                                        softWrap: true, 
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
                                    )
                                  ],
                                ),
                              )
                            ),

                            SizedBox(height: 30,), // space between card and buttons.

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                               SizedBox(
                                  width: screenWidth * 0.4,
                                  height: 60,
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
                                      Get.back();
                                    },
                                    child: Text("End",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.black,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                ),
                                SizedBox(
                                  width: screenWidth * 0.4,
                                  height: 60,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      shadowColor: Colors.white,
                                      side: BorderSide(color: Color(0xFF8D99AE)),
                                      backgroundColor: Color(0xFFCF0829),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadiusGeometry.circular(40)
                                      ),
                                    ),
                                    onPressed: (){
                                      Get.toNamed('/training3');
                                    },
                                    child: Text("Next",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                        fontFamily: "Montserrat",
                                        fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                ),
                              ],
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