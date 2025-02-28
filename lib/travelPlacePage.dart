import 'package:flutter/material.dart';

class TravelPlacePage extends StatelessWidget{
  const TravelPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget imageSection = Image.asset('assets/img/place.jpg', width: size.width, height: size.width * .30, fit: BoxFit.cover,);
    Widget titleSection =Padding(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Text('San Antonio de las Alazanas', style: TextStyle(fontWeight: FontWeight.bold),),
                ),
                Text('Arteaga, Coahuila, Mexico', style: TextStyle(color: Colors.blueGrey[600]),)
              ],
            ),
          ),
          Icon(Icons.star, color: Colors.amber,),
          Text('41')
        ],
      ),
    );
    Widget buttonsSection = Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildBtnColumn("CALL", Icons.call, Colors.blue),
          _buildBtnColumn("ROUTE", Icons.near_me, Colors.blue),
          _buildBtnColumn("SHARE", Icons.share, Colors.blue),
        ]

    );
    Widget descriptionSection = Container(
      padding: EdgeInsets.all(32),
      child: Text('Texto largo', softWrap: true, textAlign: TextAlign.center,),
    );

    return Scaffold(

      body: SingleChildScrollView(
          child: Column(children: [
            imageSection,
            titleSection,
            buttonsSection,
            descriptionSection
          ],
        ),
      ),
    );
  }

  Widget _buildBtnColumn(String title, IconData icon, Color color){
    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color,),
          Padding(padding: EdgeInsets.only(top: 8),
            child: Text(title, style: TextStyle(color: color),),
          )
        ],

        );
    }
}