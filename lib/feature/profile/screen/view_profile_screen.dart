import 'package:blooddb/feature/auth/view/sign_in_screen.dart';
import 'package:blooddb/feature/auth/view/sign_up_view.dart';
import 'package:blooddb/util/dimensions.dart';
import 'package:blooddb/util/styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'profile_edit_screen.dart';


class ProfileViewScreen extends StatelessWidget {
  const ProfileViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar(
        backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
        title: const Text("Profile",style: TextStyle(color: Colors.white),),
        forceMaterialTransparency: false,foregroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(onTap: (){Get.to(ProfileEditScreenView());},
            child: const Icon(Icons.edit,color: Colors.white,)),
          )],
      ),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.fifTeen),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/user2.jpg"),
              radius: Dimensions.thirty,
            ),
          ),
          
          const SizedBox(height: Dimensions.twenty,),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
                Text('Name',style: appBodyText,),
                Text("Dimas",style: appBodyText,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Name',style: appBodyText,),
                Text("01/03/2001",style: appBodyText,),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Profession',style: appBodyText,),
              Text("Student",style: appBodyText,),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.fifTeen),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Blood Group',style: appBodyText,),
                Text("A+",style: appBodyText,),
              ],
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Phone Number'),
              Text("0176325892"),
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('District'),
                Text("Thakurgaon",style: appBodyText,),
              ],
            ),
          ),

          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
            Text("Active Statuse"),
            Icon(Icons.toggle_off_outlined)
          ],),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
            child: InkWell(onTap: (){
              Get.to(SignUpScreenView());
            },child: Text("Add")),
          ),
        ],),
      ),
    );
  }
}
