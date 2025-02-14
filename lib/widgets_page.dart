import 'package:flutter/material.dart';

class WidgetsPage extends StatelessWidget {
  const WidgetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widgets Básicos"),
        backgroundColor: Colors.lightBlue,
        foregroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Hola mundo...!",style: TextStyle(fontSize: 24),),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20, bottom: 10, left: 8, right: 8),
            child: Text("Hola2 mundo2...!",style: TextStyle(fontSize: 24),),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 5, vertical: 8),
              child: Text("Hola3 mundo3...!",style: TextStyle(fontSize: 24),)
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Ejemplo de ",style: TextStyle(fontSize: 24),),
              Text("Widgets ",style: TextStyle(fontSize: 24),),
              Text("Básicos.",style: TextStyle(fontSize: 24),),
            ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star, color: Colors.amber,),
              Icon(Icons.star_half, color: Colors.amber,),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white
                  ),
                  onPressed: (){},
                  child: Container(
                    margin: EdgeInsets.all(4),
                    child: Row(
                      children: [Icon(Icons.add, color: Colors.white,), SizedBox(width: 5,),Text("New")],
                    ),
                  )
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white
                  ),
                  onPressed: (){},
                  child: Text("Save")
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.white
                  ),
                  onPressed: (){},
                  child: Text("Delete")
              ),
            ],),
          Stack(
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.green,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              )
            ],
          )
        ],
      ),
    );
  }
}