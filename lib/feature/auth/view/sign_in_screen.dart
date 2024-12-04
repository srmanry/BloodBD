import 'package:blooddb/common/widgets/custom_textfild.dart';
import 'package:blooddb/util/dimensions.dart';
import 'package:blooddb/util/styles.dart';
import 'package:flutter/material.dart';

class SignInScreenView extends StatefulWidget {
  const SignInScreenView({super.key});

  @override
  State<SignInScreenView> createState() => _SignInScreenViewState();
}

class _SignInScreenViewState extends State<SignInScreenView> {
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    phoneNumberController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      appBar: AppBar( backgroundColor: const Color(0xFFB71C1C), centerTitle: true,
        title: const Text("Sign In",style: TextStyle(color: Colors.white),),
        foregroundColor: Colors.white,),

      body: Padding(
        padding: const EdgeInsets.all(Dimensions.defaultSize),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10,),
            const Padding( padding: EdgeInsets.all(8.0),child: Text("Phone",style: textMedium,), ),
            CustomTextField(controller: phoneNumberController,
              focusColor: Colors.black,hinText: "phone number",),

            const Padding( padding: EdgeInsets.all(8.0),child: Text("Password",style: textMedium,), ),
            CustomTextField(controller: passwordController, focusColor: Colors.black,hinText: "password",
              suffixIcon: Icon(Icons.visibility),
             ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Remember'),
                Text("Forgot Password ?"),
              ],
            ),
            const SizedBox(height: Dimensions.hundredFifty,),
            InkWell(
                child: Container( height: 45, decoration: BoxDecoration(borderRadius: BorderRadius.circular(Dimensions.defaultSize),  color: const Color(0xFFB71C1C),),
                child: const Center(child: Text("Sign Up",style: TextStyle(fontSize: 16,color: Colors.white),),),),

              onTap: (){},),

            const SizedBox(height: Dimensions.defaultSize,),
          ],),
        ),
      ),

    );
  }
}
