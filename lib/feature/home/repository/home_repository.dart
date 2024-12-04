/*
import 'package:blooddb/feature/home/model/home_model.dart';

import 'package:http/http.dart'as http;

class HomeRepository{

static var client  = http.Client();

 Future<List<BloodModel>?>fetchBloodData()async {
   try {
     var response = await client.get(
         Uri.parse("https://blood-bd.vercel.app/blood-donors/"));
     if (response.statusCode == 200) {
       var data = response.body;
       return bloodModelFromJson(data);
     }
     else {
       return null;

     }
   }

   catch (e) {}
 }

}*/
