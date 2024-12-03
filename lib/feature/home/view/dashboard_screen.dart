import 'package:blooddb/common/widgets/custom_card.dart';
import 'package:blooddb/common/widgets/custom_tabar.dart';
import 'package:blooddb/common/widgets/search_widget.dart';
import 'package:blooddb/feature/home/widgets/custom_drawer.dart';
import 'package:blooddb/util/dimensions.dart';
import 'package:flutter/material.dart';


class DashboardScreenView extends StatefulWidget {
  const DashboardScreenView({super.key});

  @override
  State<DashboardScreenView> createState() => _DashboardScreenViewState();
}

class _DashboardScreenViewState extends State<DashboardScreenView> {

  int selectedIndex = 0;
  setSelectedIndex(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  final List<String> bloodList =["A+","A-","B+","B-","AB+","AB-","O+","O-"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
drawer: Drawer(
    child: DrawerWidget()
),
      appBar: AppBar(elevation: 0,toolbarHeight: 40,
        foregroundColor: Colors.white70,backgroundColor: const Color(0xFFB71C1C),
        centerTitle: true,
        title: const Text("BD Blood Bank",style: TextStyle(color: Colors.white),),
      ),

      body: Column(
        children: [
          Container( height: 50, decoration: const BoxDecoration(color: Color(0xFFB71C1C),
              boxShadow: [BoxShadow(color: Colors.white,blurStyle: BlurStyle.solid, blurRadius: 10),]),
              child: Expanded(
              child: ListView.builder(itemCount: bloodList.length,
                    scrollDirection: Axis.horizontal,itemBuilder: (_,index){
                    return FundRisingTypeItem( index: index,selectedIndex: selectedIndex,
                        tabNameWidget:Text(bloodList[index],style:TextStyle(color:  index ==selectedIndex?
                        const Color(0xFFB71C1C):Colors.white,fontSize: 14,fontWeight: FontWeight.w700)) ,
                          onTap: (){setState(() {selectedIndex = index;});}
                      );}),
              ),),
          const SearchWidget(),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_,index){
            return const CustomCardWidget(name: "Suman Roy", location: "DinajpurthlairDD", religion: "Hindu", number: "01762817950");
          }),
        )

        ], ),
    );
  }
}
