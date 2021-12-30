import 'package:flutter/material.dart';

void main()=>runApp(const Slivers());

class Slivers extends StatelessWidget {
  const Slivers({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(title: "Resturant Menu",
    theme: ThemeData(
      primaryColor: Colors.purple,
      primarySwatch: Colors.green,
      textTheme: const TextTheme(bodyText2: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
    ),
      home: Scaffold(appBar: AppBar(backgroundColor: Colors.blue,title: Row(children: const [
        Icon(Icons.restaurant_menu),Text("Resturant Menu")
      ],),),
      body: const CustomScrollView(slivers: [SliverAppBar(expandedHeight: 200.0,flexibleSpace: FlexibleSpaceBar(
        title: Text("Sliver AppBar"),
        centerTitle: true,
        background: FlutterLogo(),
        
      ),
     leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
     actions: [
       IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
       IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
     ],
      ),
      
      ],)
      ),
      
    );
  }
}