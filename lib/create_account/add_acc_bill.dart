import 'package:cco_test/create_account/bill_contoller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BillCreate extends StatefulWidget {
  const BillCreate({super.key});

  @override
  State<BillCreate> createState() => _BillCreateState();
}

class _BillCreateState extends State<BillCreate> {
  final Billpagecontroller controller = Get.put(Billpagecontroller());
  
 
  
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
              child: IconButton(
                onPressed: () {
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
        
            //  White Container with rounded top corners
            Padding(
              padding:  EdgeInsets.only(top: 130.0),
              child: Column(
                children: [       
                  Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsetsGeometry.only(top: 0,bottom: 30,left: 20,right: 20),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 0), // for spacing with the next widget
                            child: Container(
                              constraints: const BoxConstraints(
                                maxHeight: 250,
                                maxWidth: 400,
                                minHeight: 170,
                                minWidth: 220,
                              ),
                              height: screenHeight * 0.19,
                              width: screenWidth * 0.7,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/logo2.png'),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),

                          Text("Choose Package",
                            style: TextStyle(
                              fontSize: 35,
                              color: Colors.black,
                              fontFamily: 'Montserrat', // font Montserrat
                              ),
                            ),

                          SizedBox(height: 20,),

                          Column(
                            children: List.generate(
                              controller.plans.length,
                              (index) {
                                final plan = controller.plans[index];
                                return Container(
                                  width: 600,
                                  margin: const EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: plan['Color'],
                                  ),
                                  padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          Text(
                                            plan['price']!,
                                            style: const TextStyle(
                                              fontSize: 60,
                                              color: Colors.white,
                                              fontFamily: 'Montserrat',
                                            ),
                                          ),
                                          const Spacer(),
                                          Obx(() => Transform.scale(
                                            scale: 2.0,
                                            child: Checkbox(
                                              side: const BorderSide(color: Colors.white, width: 0.5),
                                              checkColor: Colors.black,
                                              activeColor: Colors.white,
                                              value: controller.selectedPlanIndex.value == index,
                                              onChanged: (bool? newValue) {
                                                controller.selectedPlanIndex.value =
                                                    newValue == true ? index : -1;
                                              },
                                            ),
                                          )),
                                        ],
                                      ),
                                      Text(
                                        plan['description']!,
                                        style: const TextStyle(
                                          fontSize: 15,
                                          color: Colors.white,
                                          fontFamily: 'Montserrat',
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),

                          SizedBox(height: 30,),

                          Container(
                              height: 175,
                              width: 600,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // the card shadow
                                  BoxShadow(
                                    color: Colors.grey.withAlpha(100),
                                    blurRadius: 20,
                                    offset: const Offset(1, 5),
                                  ),
                                ],
                              ),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                              child: Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.pin_drop_outlined,size: 30,color: Colors.red,),
                                        Text("Contact Address",
                                          style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.black,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.normal,
                                                    ),
                                                ) 
                                      ],
                                    ),
                                    SizedBox(height: 20,),

                                    Text("73455 Twentynine Palms Highway,\nTwentynine Palms CA 92277",
                                      style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                                ),
                                                textAlign: TextAlign.center,
                                            ) 
                                  ],
                                ),
                              ),
                            ),
                          ),

                          SizedBox(height: 30,),

                          // The Card 
                          Container(
                              height: 555,
                              width: 600,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // the card shadow
                                  BoxShadow(
                                    color: Colors.grey.withAlpha(100),
                                    blurRadius: 20,
                                    offset: const Offset(1, 5),
                                  ),
                                ],
                              ),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 30,left: 20,right: 20,bottom: 30),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space the text fields.and heading.
                                    // contents of the card starts here.
                                    children: [
                                        Row(
                                          children: [
                                            Obx(() => 
                                              Checkbox(
                                                  value: controller.isChecked.value,
                                                  activeColor: Colors.blue,
                                                  checkColor: Colors.white,
                                                  onChanged: (bool? value) {
                                                    controller.isChecked.value = value ?? false;
                                                  },
                                                )),
                                            Expanded(
                                              child: Text("Billing Address is same as Contact Address",
                                              style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.black,
                                                        fontFamily: 'Montserrat',
                                                        fontWeight: FontWeight.normal,
                                                        overflow: TextOverflow.clip,
                                                        ),
                                                        maxLines: 2,
                                                    ),
                                            ),
                                          ],
                                        ),
                                        Text("Billing Adrress",
                                          style: TextStyle(
                                                    fontSize: 25,
                                                    color: Colors.black,
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.normal,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                ),
                                        Column(
                                            children: [
                                              Align(
                                                alignment: AlignmentGeometry.centerLeft,
                                                child: Text("Address",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF666666),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.normal,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                  ),),
                                            TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                                  errorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                                hint: Text( "Enter your address",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFF666666),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                              ),
                                              // Input text style, color and font.
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                            ]
                                        ),
                                          
                                        Column(
                                          children: [
                                            Align(
                                              alignment: AlignmentGeometry.centerLeft,
                                              child: Text("City",
                                          style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF666666),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.normal,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                ),),
                                            TextField(
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                                  errorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                                hint: Text( "Enter your city",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFF666666),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                              ),
                                              // Input text style, color and font.
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xFF666666),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ],
                                        ),
                                          
                                      Column(
                                        children: [
                                          Align(
                                              alignment: AlignmentGeometry.centerLeft,
                                              child: Text("State",
                                          style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF666666),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.normal,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                ),),
                                          Obx(()=>
                                            TextField(
                                              controller: controller.phoneController,
                                              onChanged: controller.validatePhone,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                                  errorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                                errorText: controller.phoneMessageError.value,
                                                hint: Text( "Enter your state",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFF666666),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                              ),
                                              // Input text style, color and font.
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xFF666666),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                  
                                      Column(
                                        children: [
                                          Align(
                                              alignment: AlignmentGeometry.centerLeft,
                                              child: Text("Zipcode",
                                          style: TextStyle(
                                                    fontSize: 12,
                                                    color: Color(0xFF666666),
                                                    fontFamily: 'Montserrat',
                                                    fontWeight: FontWeight.normal,
                                                    ),
                                                    textAlign: TextAlign.center,
                                                ),),
                                          Obx(()=>
                                            TextField(
                                              controller: controller.zipcodeController,
                                              onChanged: controller.validateZipCode,
                                              decoration: InputDecoration(
                                                border: OutlineInputBorder(
                                                ),
                                                  enabledBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                                  focusedBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                                  errorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                  focusedErrorBorder: OutlineInputBorder(
                                                    borderRadius: BorderRadius.circular(8),
                                                    borderSide: BorderSide(color: Colors.red, width: 1),),
                                                contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                                errorText: controller.zipMessageError.value,
                                                helper: Text( "Zipcode must be 5 digits",
                                                style: TextStyle(
                                                  fontSize: 9,
                                                  color: Color(0xFF666666),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                                hint: Text( "Enter your Zipcode",
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Color(0xFF666666),
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                    ),
                                                  ),
                                              ),
                                              // Input text style, color and font.
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Color(0xFF666666),
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                          
                                    ],
                                  ),
                                ),
                              )
                            ),

                            

                            SizedBox(height: 30,),

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
                                  onPressed: (){},
                                  child: Text("Submit",
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
                                onPressed: (){
                                  Get.back();
                                },
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