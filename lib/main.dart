

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
      home: nupur()
  ));
  class nupur extends StatefulWidget {
  @override
  _nupurState createState() => _nupurState();
}

class _nupurState extends State<nupur> {

   int nupurage=0;


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: Colors.pinkAccent[700],
    appBar: AppBar(
      title: Text("Nupur's ID Card"),
      centerTitle:true,
      backgroundColor: Colors.pinkAccent,
      elevation: 0.0,
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        setState(() {
          nupurage+=1;
        });
      },
      child: Icon(Icons.add),
      backgroundColor:Colors.amber,
    ),
    body:Padding(
      padding:EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/3.png'),
            radius: 40.0,

          ),
        ),
          Divider(
            height: 30.0,
            color: Colors.amber,
          ),

          Text(
              "NAME",
            style: TextStyle(
              color: Colors.black,
              letterSpacing: 2.0
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "Nupur Sanon",
            style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 21.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30.0),
          Text(
            "AGE",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0
            ),
          ),
          SizedBox(height: 10.0),
          Text(
            "$nupurage",
            style: TextStyle(
                color: Colors.amber,
                letterSpacing: 2.0,
                fontSize: 21.0,
                fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(height: 30.0),
          Row(
            children: [
              Icon(
               Icons.email,
                color:Colors.black
              ),
              SizedBox(width: 10.0,),
              Text(
                  "nupusan@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontSize: 21.0,
              ),
              ),
          ]
          ),
        ]
      )
    ),
  );
  }
}


