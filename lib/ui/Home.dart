import 'package:flutter/material.dart';


class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    
    return HomeState();
  }

}
class HomeState extends State<Home>{
  final TextEditingController _weihtController=new TextEditingController();

  int raidoValue=0;
  double _finalResult=0.0;

  void HandleRaidoValueChange (int value){
    setState(() {
      raidoValue=value;
      
     switch(raidoValue){
       case 0:
       _finalResult=calculateWeiht(_weihtController.text,0.06);
       break;
       case 1:
       _finalResult=calculateWeiht(_weihtController.text, 0.38);
       break;
       case 2:
       _finalResult=calculateWeiht(_weihtController.text,0.91 );
       break;
    }
       
           });
       
       
         }
       
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
                              controller: _weihtController,
                              keyboardType: TextInputType.number,
                              decoration: new InputDecoration(
                                labelText: 'You weiht on Earch',
                                hintText: 'In Pounds',
                                icon: new Icon(Icons.person_outline),
                              ),
                            ),
                            //pading
                            new Padding(padding: new EdgeInsets.all(5.0)),
       
                            //raido buttn add 
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
       
       
                                new Radio<int>(
                                  
                                  value: 0, groupValue: raidoValue, onChanged: HandleRaidoValueChange,
                                ),
                                new Text("Pluto",style: new TextStyle(color: Colors.white30),),
                                new Radio<int>(
                                 
                                  value: 1, groupValue: raidoValue, onChanged: HandleRaidoValueChange,
                                ),
                                 new Text("Mars",style: new TextStyle(color: Colors.white30),),
                                new Radio<int>(
                                 
                                  value: 2, groupValue: raidoValue, onChanged: HandleRaidoValueChange,
                                ),
                                 new Text("Venus",style: new TextStyle(color: Colors.white30),),
                              ],
                            ),
                         
                            new Padding(padding: new EdgeInsets.all(16.9),),
       
                            //show text
                            new Text("$_finalResult",style: new TextStyle(color: Colors.white,fontSize: 19.4,fontWeight: FontWeight.w500),),
       
                          ],
                        ),
                      ),
       
                   ],
       
       
                 ),
               ),
       
           );
         }
       
         double calculateWeiht(String weight, double multiplier) {
           if(int.parse(weight).toString().isEmpty && int.parse(weight)>0){
             return int.parse(weight)*multiplier;
           }else{
             print("Worng!");
             return int.parse("180")*0.39; 
           }

         }

}