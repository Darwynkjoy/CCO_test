import 'package:cco_test/create_account/add_acc_conroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Accountcreate extends StatefulWidget {
  const Accountcreate({super.key});

  @override
  State<Accountcreate> createState() => _AccountcreateState();
}

class _AccountcreateState extends State<Accountcreate> {

  final Accountpagecontroller controller = Get.put(Accountpagecontroller());
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

                        // The Card 
                        Container(
                            height: 1020,
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
                                     Text("Create account",
                                    style: TextStyle(
                                      fontSize: 35,
                                      color: Colors.black,
                                      fontFamily: 'Montserrat', // font Montserrat
                                      ),
                                    ),

                                    Obx(()=>
                                      TextField(
                                        controller: controller.firstNameController,
                                        onChanged: controller.validateFirstName,
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
                                          errorText: controller.firstNameError.value,
                                          hint: Center(
                                            child: Text( "First Name",
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
                                        controller: controller.lastNameController,
                                        onChanged: controller.validateLastName,
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
                                              borderSide: BorderSide(color: Colors.red, width: 1),),// border when there is error but text feild not selected.
                                            focusedErrorBorder: OutlineInputBorder(
                                              borderRadius: BorderRadius.circular(40),
                                              borderSide: BorderSide(color: Colors.red, width: 1),),// border when there is error and text field selected.
                                          contentPadding: EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                                          errorText: controller.lastNameError.value,
                                          hint: Center(
                                            child: Text( "Last Name",
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
                                            dropdownColor: Colors.white,
                                            alignment: Alignment.center,
                                            borderRadius: BorderRadius.circular(30),
                                            value: controller.selectedItem.value,
                                            isExpanded: true,
                                            iconSize: 30,
                                            hint: Text(
                                              'Select Lisence Type',
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
                                    
                                    //Scheduled Date of Exam.date picker.
                                    Column(
                                      children: [
                                        GestureDetector(
                                          onTap: () => controller.selectDate(context),
                                          child: Container(
                                            height: 60,
                                            width: double.infinity,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 1, color: Colors.grey.shade300),
                                              color: Colors.white,
                                              borderRadius: BorderRadius.circular(40),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(10.0),
                                              child: Row(
                                                children: [
                                                  const Spacer(),
                                                  Obx(() {
                                                    final date = controller.selectedDate.value;
                                                    return Text(
                                                      date != null
                                                          ? "${date.day}/${date.month}/${date.year}"
                                                          : "Scheduled Exam Date",
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black,
                                                          fontFamily: 'Montserrat',
                                                          fontWeight: FontWeight.normal,
                                                            ),
                                                          );
                                                  }),
                                                  const Spacer(),
                                                  const Icon(Icons.date_range_outlined)
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),

                                        SizedBox(height: 3,),
                                        // helper text
                                        Text("You will have access until sooner of this date or 4 months",
                                          style: TextStyle(
                                            fontSize: 8,
                                            color: Colors.black,
                                            fontFamily: 'Montserrat',
                                            fontWeight: FontWeight.normal,
                                              ),
                                              ),
                                      ],
                                    ),

                                    Obx(()=>
                                      TextField(
                                        controller: controller.emailController,
                                        onChanged: controller.validateEmail,
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
                                          errorText: controller.emailError.value,
                                          hint: Center(
                                            child: Text( "Email ID",
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
                                        controller: controller.confirmEmailController,
                                        onChanged: controller.validateConfirmEmail,
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
                                          errorText: controller.confirmEmailError.value,
                                          hint: Center(
                                            child: Text( "Confirm Email ID",
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
                                        controller: controller.passwordController,
                                        onChanged: controller.validatePassword,
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
                                          errorText: controller.passwordError.value,
                                          hint: Center(
                                            child: Text( "Password",
                                            style: TextStyle(
                                              fontSize: 18,
                                              color: Colors.black,
                                              fontFamily: 'Montserrat',
                                              fontWeight: FontWeight.normal,
                                                ),
                                              ),
                                          ),
                                          helper: Center(
                                            child: Text( "Use 6 or more characters with a mix of letters,numbers & symbols.",
                                              style: TextStyle(
                                                fontSize: 8,
                                                color: Colors.black,
                                                fontFamily: 'Montserrat',
                                                fontWeight: FontWeight.w500,
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
                                        controller: controller.confirmPasswordController,
                                        onChanged: controller.validateConfirmPassword,
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
                                          errorText: controller.confirmPasswordError.value,
                                          hint: Center(
                                            child: Text( "Confirm Password",
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