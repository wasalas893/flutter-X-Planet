import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return HomeState();
  }

}
class HomeState extends State<Home>{
  @override
  Widget build(BuildContext context) {
   
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Weiht of Planet X'),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      backgroundColor: Colors.blueGrey,
        //body
        body: new Container(
          alignment: Alignment.topCenter,
          child: new ListView(
            padding: const EdgeInsets.all(2.05),
            children: <Widget>[
              new Image.asset('images/planet.png',width: 200.0,height: 133.0,),
      //text file ganima
               new Container(

                 margin: const EdgeInsets.all(3.0),
                 alignment: Alignment.topCenter,

                 child: new Column(
                   children: <Widget>[
                     new TextField(
                       controller: null,
                       keyboardType: TextInputType.number,
                       decoration: new InputDecoration(
                         labelText: 'You weiht on Earch',
                         hintText: 'In Pounds',
                         icon: new Icon(Icons.person_outline),
                       ),
                     ),
                   ],
                 ),
               ),

            ],


          ),
        ),

    );
  }

}