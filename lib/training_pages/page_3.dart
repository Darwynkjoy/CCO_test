import 'package:cco_test/training_pages/page3_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Trainingpage3 extends StatefulWidget {
  const Trainingpage3({super.key});

  @override
  State<Trainingpage3> createState() => _Trainingpage3State();
}

class _Trainingpage3State extends State<Trainingpage3> {
  @override
  Widget build(BuildContext context) {
  final Trainingpage3controller controller = Get.put(Trainingpage3controller());
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
                      minHeight: MediaQuery.of(context).size.height - 130, // fills below area when viewed in devices large screen error fix
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

                          Padding(
                            padding:  EdgeInsets.symmetric(vertical: screenHeight * 0.035,),
                            child: Container(
                              height: screenHeight * 0.35,
                              width: 600,
                              color: Colors.amber,
                              child: Center(
                                child: Text("animation Placeholder",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: 'Montserrat',
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ),
                          ),

                          Column(
                            children: List.generate(
                              controller.plans.length,
                              (index) {
                                final plan = controller.plans[index];
                                return Container(
                                  height: 62,
                                  width: 600,
                                  margin: EdgeInsets.only(bottom: screenHeight * 0.035,),//spacing between the grid items
                                  decoration: BoxDecoration(
                                    color: plan['Color'],
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children:[ Expanded(
                                        child: Text(
                                          plan['description']!,
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                            fontFamily: 'Montserrat',
                                          ),
                                          overflow: TextOverflow.clip,
                                          maxLines: 2,
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(horizontal: 3.0),
                                        child: Container(
                                          height: 48,
                                          width: 60,
                                          decoration: BoxDecoration(
                                            color: Colors.white,
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withAlpha(100),
                                                blurRadius: 1,
                                                offset: Offset(0, 2), // changes position of shadow
                                              ),
                                            ],
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            child: Text(plan['result'],
                                              style: TextStyle(
                                                fontSize: 25,
                                                fontWeight: FontWeight.normal,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                      ],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),

                          SizedBox(height: screenHeight * 0.04,),

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
                              child: Text("Close",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontFamily: "Montserrat",
                                  fontWeight: FontWeight.bold,
                                  ),
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