import 'package:flutter/material.dart';
import 'package:taskno2project/models/container_model.dart';
import 'package:taskno2project/widgets/container_item.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<ContainerModel> container1 =[
    ContainerModel("231","Sale"),
    ContainerModel("8.550", "Customer"),
  ];
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskNo2App',
      home: SecondTask(),
    );
  }
}

class SecondTask extends StatelessWidget{
  const SecondTask({Key? key}) : super(key: key); 
 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.black54,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Colors.white,),
            label: "profile",
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Colors.white,),
            label: "Settings"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search,color: Colors.white,),
              label: "Search"
              ),
              BottomNavigationBarItem(
              icon: Icon(Icons.folder,color: Colors.white,),
              label: "Folder"
              ),
        ],
      ),
      body:SingleChildScrollView(
        child: SafeArea(
          child:  Container(
            padding:EdgeInsets.all(30),
          color: Colors.black54,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.person,color: Colors.white,size: 30,),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 70,
                    height: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.asset("assets/images/Image1.jpg"),
                    ),
                    decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Colors.white,
                      width: 1,
                    ),
                      )
                      ),
                ],
              ),
              SizedBox(
                child: Container(
                  color: Colors.black54,
                  height: 80,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hello David",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),
                  ),
                  Container(
                    padding: EdgeInsets.all(5),
                    width: 60,
                    height: 60,
                    child: Icon(Icons.access_alarm,color: Colors.white,size: 30,),
                    decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: Colors.white,
                      width: 0,
                    ),
                      )
                      ),
                ],
              ),
              SizedBox(
                child: Container(
                  color: Colors.black54,
                  height: 40,
                ),
              ),
              TextField(
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white),
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  fillColor: Colors.white30,
                  filled: true,
                  hintText: "Search",
                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                  border: OutlineInputBorder(
                    borderSide:const BorderSide(color: Colors.green,width: 10.0),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              SizedBox(
                child: Container(
                  color: Colors.black54,
                  height: 30,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListView.separated(
                    itemBuilder: (context,index){
                      return ChatItem(
                        container1[index].text1, 
                        container1[index].text2,
                        );
                    },
                     separatorBuilder: (context,index){
                       return const Divider(
                          indent: 70,
                           thickness: 1,
                      );
                     },
                      itemCount: container1.length,
                      ),
                ],
              ),
              SizedBox(
                child: Container(
                  color: Colors.black54,
                  height: 22,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.account_balance),
                        Text("234.5K",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        Text("Products",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.yellowAccent,
                      shape:BoxShape.circle,
                    ),
                  ),
                  Container(
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.person,),
                        Text("9745K",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                        Text("Revenue",style: TextStyle(fontWeight: FontWeight.bold),),
                      ],
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape:BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
          ),
      ),
     
    );
  }

}