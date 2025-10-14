import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'add_acc_conroller2.dart';

class Addresscreate extends StatefulWidget {
  const Addresscreate({super.key});

  @override
  State<Addresscreate> createState() => __AccountcreateState();
}

class __AccountcreateState extends State<Addresscreate> {
  final Addresspagecontroller controller = Get.put(Addresspagecontroller());
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
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, bottom: 40), // padding of the white container. can be used to change the width of the CARD.
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                bottom: 30), // for spacing with the next widget
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
        
                          // The Card 
                          Container(
                              height: 750,
                              width: 550,
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
                                              borderRadius: BorderRadius.circular(40)
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