import 'dart:convert';


import 'package:blooddb/feature/home/model/home_model.dart';

import 'package:get/get.dart';
import 'package:http/http.dart'as http;


class HomeController extends GetxController{


  List<BloodModel> bloodList=[];




  @override
  void onInit() {
    //  homeRepository =HomeRepository();
    fetchBlood();

    // TODO: implement onInit
    super.onInit();
  }

  Future<void> fetchBlood()async{
    try {
      final response = await http.get(Uri.parse("https://blood-bd.vercel.app/blood-donors/"));
      if(response.statusCode == 200){
        var data = jsonDecode(response.body);

        for(int i=0;i<data.length;i++)
          bloodList.add(BloodModel.fromJson(data[i]));
        update();
        print(bloodList);
        //bloodModelToJson(data);
      }

    }
    catch(e){
      print(e);
    }

  }



}