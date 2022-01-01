import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
      title: _title,
      
      home: MyStatefulWidget(),
      
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final bool _pinned = true;
  final bool _snap = false;
  final bool _floating = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      drawer:  Drawer(
        backgroundColor: Colors.cyanAccent,child:
         ListView(children: const [
          DrawerHeader(child: Center(
            child: Text("Help Line",style: TextStyle(fontSize: 29,fontWeight: FontWeight.bold),
            ),
          ),decoration:
           BoxDecoration(gradient:
           LinearGradient(
           begin: Alignment.bottomLeft,
           end: Alignment.bottomRight,colors: 
           [Colors.deepOrange,Colors.lightGreen]),
              ),
           ),
          ListTile(leading: Icon(Icons.person),title: Text("Newton Gain"),),
          ListTile(leading: Icon(Icons.email),title: Text("newtongain7@gmail.com"),),
          ListTile(leading: Icon(Icons.phone),title: Text("01918104119")),
        

        ],)
        
        
      ),
      body: CustomScrollView(
        
        slivers: <Widget>[
          SliverAppBar(
            pinned: _pinned,
            snap: _snap,
            floating: _floating,
            expandedHeight: 160.0,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text('SliverAppBar'),
              background: FlutterLogo(),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
              child: Center(
                child: Text('Scroll to see the SliverAppBar in effect.'),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  color: index.isOdd ? Colors.white : Colors.black12,
                  height: 100.0,
                  child: Center(
                    child: Text('$index', textScaleFactor: 5),
                  ),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    
    );
  }
}