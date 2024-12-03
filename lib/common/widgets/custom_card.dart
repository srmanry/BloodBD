
import 'package:blooddb/util/dimensions.dart';
import 'package:blooddb/util/styles.dart';
import 'package:flutter/material.dart';



class CustomCardWidget extends StatelessWidget {
 final String name;
 final String? image;
 final String ?dateOfBirth;
 final String ?profession;
 final String location;
 final String religion;
 final String number;



  const CustomCardWidget({super.key,this.image, required this.name,
  this.profession,required this.location,  this.dateOfBirth, required this.religion, required this.number,  });
  final  bodyTextStyle = const TextStyle(fontSize: 14,fontWeight: FontWeight.w500);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 10),
                  child: Container(decoration: BoxDecoration( color: Colors.white, borderRadius: BorderRadius.circular(10),border: Border.all(color: Colors.white)    ),
                  child: Stack(children: [
                  Padding(padding: const EdgeInsets.all(5.0),
                      child: Column(children: [
                          Row( children: [
                             const Icon(Icons.account_circle_outlined,size: Dimensions.thirtyFive,),
                             const SizedBox(width: Dimensions.twenty,),
                              Expanded(child: Text(name,style: appBodyText,)), ],),

                         /* Padding(
                            padding: const EdgeInsets.symmetric(vertical: Dimensions.eight),
                            child: Row( children: [
                                Icon(Icons.calendar_month,size: Dimensions.thirty,color: Colors.green,),
                              SizedBox(width: Dimensions.thirtyFive,),
                              Text("",style: appBodyText,)
                              ],),
                          ),*/

                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: Dimensions.defaultSize),
                        child: Row(

                          children: [
                            Icon(Icons.bloodtype_outlined,color: Colors.black,size: Dimensions.thirty),
                            SizedBox(width: Dimensions.twenty,),
                            Text('A+')
                          ],), ),

                        Row(children: [
                          const Icon(Icons.favorite_border,color: Colors.black,),
                          const SizedBox(width: Dimensions.twentyFive,),
                          Text(religion,style: appBodyText,),], ),
                          const SizedBox(height: Dimensions.defaultSize,),

                          Row(crossAxisAlignment: CrossAxisAlignment.start,

                            children: [
                              Row(children: [
                                const Icon(Icons.pin_drop_outlined,size: Dimensions.thirty,color: Colors.black,),
                                const SizedBox(width: Dimensions.twenty,),
                                Text(location,style: appBodyText,),
                              ],),
                          const SizedBox(width: Dimensions.defaultSize,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: Dimensions.defaultSize),
                              child: Row(children: [
                                const Icon(Icons.work_history_outlined,color: Colors.black,),
                                const SizedBox(width: Dimensions.eight,),
                                Text("Student",style: appBodyText,),], ),),

                          ],),

                        ],  ),),

                                  Align(alignment: Alignment.bottomRight,
                                  child: Padding(padding: const EdgeInsets.all(8.0),
                                    child: InkWell(
                                    child: Container(height: 30,width: 45,decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(5),),

                                       //  child: Center(child: Text("Call",style: textMedium.copyWith(color: Colors.white),)),
                                         child: Icon(Icons.phone_forwarded,color: Colors.green[700],)),
                                      onTap: (){
                                       // FlutterPhoneDirectCaller.callNumber(number);
                                      },),)),
                ],),),);
  }
}