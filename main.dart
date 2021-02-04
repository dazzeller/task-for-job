import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
 

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<String> names = ["Labours","Mchinery","Labours", "Machinery","Labours","Machinery","Labours", "Machinery","Labours","Machinery","Labours","Machinery"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    home: Scaffold(
       appBar: AppBar(
          title: Text('Farm Expenses',
          style: TextStyle(
            color: Colors.white
          )
          ),
           backgroundColor: Colors.lightGreen,
          actions: [
            IconButton(icon: Icon(Icons.notifications,
            color: Colors.white),
             onPressed: null)
          ],
        ),

       body : Column(
                         children: [
                         SizedBox(
                           height: 150,
                            child: Container(
                              color: Colors.green[50],
                              child:      Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                           new Text("80,000",
                                           style: TextStyle(
                                               fontSize: 20.0,
                                               color: Colors.green,
                                               fontWeight: FontWeight.bold
                                           ),
                                           ),
                                              new Text("Total Income",
                                            style: TextStyle(
                                              fontSize: 10.0,
                                              color: Colors.black
                                            ),
                                            ),
                                         Spacer(),    // to get the space
                                        new Text("20,000",
                                           style: TextStyle(
                                             fontSize: 20.0,
                                             color: Colors.orange[900],
                                             fontWeight: FontWeight.bold
                                           ),
                                        ),
                                          new Text("Total Expenses",
                                          style: TextStyle(
                                            fontSize: 10.0,
                                            color: Colors.black
                                          ),
                                          ),  
                                        ],
                                       ),
                                    ),
                           ),  
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                           children: [   
                            Padding(padding: EdgeInsets.fromLTRB(20, 20, 20, 20)),
                              new Text("Expenses Type",          // left side content
                               style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black
                                  ),
                              ),
                                Spacer(),
                                 new Text("Amount",          // right side content
                               style: TextStyle(
                                    fontSize: 10.0,
                                    color: Colors.black
                                  ),
                              ),
                              SizedBox( 
                                height: 10.0,
                              ),
                             Icon(Icons.subdirectory_arrow_left),
                             SizedBox(
                               height: 6.0
                             ),
                             Icon(Icons.picture_as_pdf),
                           ],
                         ) , 
                         ListView.builder(
   //     itemCount: students.length,
          itemCount: 12,
        itemBuilder: (BuildContext context , int index)
           
  
        {
          return Card(child:ListTile(
          title: Text(names[index]),
          subtitle: Text("online"),
          leading: CircleAvatar(child:Text("j")),
          trailing: Text("..."),
          ),
        
          );
        },
      )      
                         ],
         
                    ),
       
       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.green,
        shape: CircularNotchedRectangle(

        ),
        child: Row(
           mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              color: Colors.white,
              onPressed: (){

              },
            ),

             IconButton(
              icon: Icon(Icons.file_upload),
              color: Colors.white,
              onPressed: (){

              },
            ),
            IconButton(
              icon: Icon(Icons.motorcycle),
              color: Colors.white,
              onPressed: (){

              },
            ),
             IconButton(
              icon: Icon(Icons.more_vert),
              color: Colors.white,
              onPressed: (){

              },
            ),
          ],
        ),
      ),
    
  
    )
       );
    
  }
}