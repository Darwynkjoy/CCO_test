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
    return Scaffold(
      body: GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () => FocusScope.of(context).unfocus(), // dismiss keyboard
        child: Stack(
          children: [
            /// Background Image
            SizedBox.expand(
              child: Image.asset(
                "assets/images/Backhh.png",
                fit: BoxFit.cover,
              ),
            ),
        
            // Back Button
            Positioned(
              top: 50,
              left: 20,
              child: IconButton(
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
        
            //  White Container with rounded top corners
            SingleChildScrollView(
              physics: ClampingScrollPhysics(),
              padding:
                EdgeInsets.only(top: 150), // Push white container to desired height from the top of the screen.
        
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 40), // padding of the white container. can be used to change the width of the CARD.
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 10), // for spacing with the next widget
                            child: Container(
                              height: 150,
                              width: 250,
                              decoration: BoxDecoration(
                                image: const DecorationImage(
                                  image: AssetImage("assets/images/logo2.png"),
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

                          SizedBox(
                            height: 1100,
                            child: GridView.builder(
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1,
                                mainAxisSpacing: 20,
                                childAspectRatio: (2.2 / 2)                    
                                ),
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: controller.plans.length,
                                padding: EdgeInsets.zero,
                                itemBuilder:(context,index){
                                  final plan = controller.plans[index]; 
                                  return Container(
                                    height: 20,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: plan['Color'],
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
                                      child: Column(
                                        children: [
                                          Row(
                                            children: [
                                              Text(plan['price']!,
                                              style: TextStyle(
                                                fontSize: 50,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                              Spacer(),
                                              Obx(() => 
                                                Transform.scale(
                                                  scale: 2.0,
                                                  child: Checkbox(
                                                    value: controller.selectedPlanIndex.value == index, // true if this plan is selected
                                                    onChanged: (bool? newValue) {
                                                      if (newValue == true) {
                                                        controller.selectedPlanIndex.value = index; // select this plan
                                                      } else {
                                                        controller.selectedPlanIndex.value = -1; // deselect
                                                      }
                                                    },
                                                  ),
                                                ))
                                              ],
                                            ),
                                            Text(plan['description']!,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Colors.white,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500,
                                                ),
                                            ) 
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          ),
                          // The Card 
                          Container(
                              height: 600,
                              width: 600,
                              decoration: BoxDecoration(
                                boxShadow: [
                                  // the card shadow
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.4),
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
                                  padding: const EdgeInsets.all(25.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Evenly space the text fields.and heading.
                                    // contents of the card starts here.
                                    children: [
                                      
                                        TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                            ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                            hint: Center(
                                              child: Text( "Address",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                                  ),
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
        
                                        TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                            ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                            hint: Center(
                                              child: Text( "City",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                                  ),
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
        
                                      // Select Licence Type dropdown.
                                      Container(
                                        height: 60,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          border: Border.all(width: 1, color: Colors.grey.shade300),
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(40),
                                        ),
                                        child: Center(
                                          child: Obx(
                                            () => DropdownButton<String>(
                                              iconEnabledColor: Colors.black,
                                              alignment: Alignment.center,
                                              dropdownColor: Colors.white,
                                              isExpanded: true,
                                              borderRadius: BorderRadius.circular(30),
                                              value: controller.selectedItem.value,
                                              iconSize: 30,
                                              hint: Text(
                                                'Province/State',
                                                style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontFamily: 'Montserrat',
                                                  fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                              items: controller.items.map((String item) {
                                                return DropdownMenuItem<String>(
                                                  value: item,
                                                  child: Center(
                                                    child: Text(item,
                                                      style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.black,
                                                      fontFamily: 'Montserrat',
                                                      fontWeight: FontWeight.normal,
                                                    ),
                                                    ),
                                                  ),
                                                );
                                              }).toList(),
                                              onChanged: (String? newValue) {
                                                controller.updateSelectedItem(newValue);
                                              },
                                              // Remove the underline.
                                              underline: SizedBox.shrink(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      
                                      Obx(()=>
                                        TextField(
                                          controller: controller.zipcodeController,
                                          onChanged: controller.validateZipCode,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                            ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                            errorText: controller.zipMessageError.value,
                                            hint: Center(
                                              child: Text( "Zip Code",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                                  ),
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
                                      ),
        
                                      Obx(()=>
                                        TextField(
                                          controller: controller.phoneController,
                                          onChanged: controller.validatePhone,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                            ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                            errorText: controller.phoneMessageError.value,
                                            hint: Center(
                                              child: Text( "Phone",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                                  ),
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
                                      ),
        
                                      //Obx(()=>
                                        TextField(
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                            ),
                                              enabledBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.grey.shade300, width: 1),),
                                              focusedBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.blueAccent, width: 1),), // Border when the TextField is selected and its width when selected.
                                              errorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                              focusedErrorBorder: OutlineInputBorder(
                                                borderRadius: BorderRadius.circular(40),
                                                borderSide: BorderSide(color: Colors.red, width: 1),),
                                            contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                            hint: Center(
                                              child: Text( "Verification Code",
                                              style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.normal,
                                                  ),
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
                                      //),
        
                                      // Next button.
                                      SizedBox(
                                        height: 60, // next button size.
                                        width: double.infinity,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.red,
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadiusGeometry.circular(40)
                                            ),
                                          ),
                                          onPressed: (){},
                                          child: Text("Next",
                                            style: TextStyle(
                                              fontSize: 18,
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
                              )
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
    );
  }
}