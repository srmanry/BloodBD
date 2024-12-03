import 'package:blooddb/common/widgets/custom_textfild.dart';
import 'package:blooddb/util/dimensions.dart';
import 'package:blooddb/util/styles.dart';
import 'package:flutter/material.dart';

class SignUpScreenView extends StatefulWidget {
  const SignUpScreenView({super.key});

  @override
  State<SignUpScreenView> createState() => _SignUpScreenViewState();
}

class _SignUpScreenViewState extends State<SignUpScreenView> {

  final  bodyTextStyle = const TextStyle(fontSize: 14,);

  TextEditingController userNameController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController bloodGroupController = TextEditingController();

  TextEditingController professionController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController religionController = TextEditingController();

  TextEditingController districtNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    userNameController.dispose();
    dateOfBirthController.dispose();
    religionController.dispose();
    professionController.dispose();
    phoneNumberController.dispose();
    bloodGroupController.dispose();
    districtNameController.dispose();
    super.dispose();
  }
  int selectedIndex= 0;
  String? selectedValue;
  List<String> bloodList =["A+","A-","B+","B-","AB+","AB-","O+","O-"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
        title: const Text("Register",style: TextStyle(color: Colors.white),),
        foregroundColor: Colors.white,),

   body: Padding(
     padding: const EdgeInsets.all(Dimensions.defaultSize),
     child: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
       const SizedBox(height: 10,),
       const Padding( padding: EdgeInsets.all(8.0),child: Text("Name",style: textMedium,), ),
       CustomTextField(controller: userNameController,
         focusColor: Colors.black,hinText: "Name",),


       const Padding(padding: EdgeInsets.all(8.0),child: Text("Date of Birth"), ),
       CustomTextField(controller: dateOfBirthController,focusColor: Colors.black,hinText: "Date of birth",),
       const Padding(padding: EdgeInsets.all(8.0),child: Text("Blood Group"),),
       // CustomTextField( controller: bloodGroupController,focusColor: Colors.black, hinText: "Blood Group",),
       Container(height: 40,
         decoration: BoxDecoration(color: Color(0xFFF3F3F3), borderRadius: BorderRadius.circular(Dimensions.defaultSize),),
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: Dimensions.defaultSize),
           child: DropdownButton<String>(
             focusColor: Colors.white70,autofocus: false,
             underline: SizedBox(),

             iconSize: Dimensions.thirtyFive,icon: Icon(Icons.keyboard_arrow_down),
             isExpanded: true,
             style: TextStyle(fontWeight: FontWeight.w500,fontSize: Dimensions.fontSizeLarge,color: Colors.red),
             hint: Text('Select Blood Group'), // Placeholder when no item is selected
             value: selectedValue,
             items: bloodList.map((String item) {return DropdownMenuItem<String>(value: item, child: Padding(padding: const EdgeInsets.all(8.0), child: Text(item),),);
             }).toList(),
             onChanged: (String? newValue) {setState(() {selectedValue = newValue;});},),
         ),),
     // CustomTextField(controller: dateOfBirthController,focusColor: Colors.black,hinText: "Date of birth",),

       const Padding(padding: EdgeInsets.all(8.0),child: Text("Religion"),),
       CustomTextField( controller: religionController,focusColor: Colors.black, hinText: "Religion",),
       const Padding(padding: EdgeInsets.all(8.0),child: Text("Profession"),),
       CustomTextField(controller:professionController, focusColor: Colors.black, hinText: "Profession",),
       const Padding(padding: EdgeInsets.all(8.0),child: Text("Phone number"),),
       CustomTextField(controller: phoneNumberController,focusColor: Colors.black,hinText: "Phone number",),
       const Padding(padding: EdgeInsets.all(8.0),child: Text("District"),),
       CustomTextField(controller: districtNameController,focusColor: Colors.black,hinText: "District",),
       // const Padding(padding: EdgeInsets.all(8.0),child: Text("Email"),),
       //  CustomTextField(controller: emailController,focusColor: Colors.black,hinText: "email",),
       // const Padding(padding: EdgeInsets.all(8.0),child: Text("Password"),),
       //  CustomTextField(controller: passwordController,focusColor: Colors.black,hinText: "password",),

       const SizedBox(height: Dimensions.twenty,),

       InkWell(
         child: Container( height: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: const Color(0xFFB71C1C),),
           child: const Center(child: Text("Save",style: TextStyle(fontSize: 16,color: Colors.white),),),),

         onTap: (){

         },),
     ],),
   ),

    );
  }
}
