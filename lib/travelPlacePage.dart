import 'package:flutter/material.dart';

class TravelPlacePage extends StatelessWidget{
  const TravelPlacePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Widget imageSection = Image.asset('assets/img/place.png', width: size.width, height: size.width * .30, fit: BoxFit.cover,);
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
    return Scaffold(
        body: Column(
            children: [
              imageSection,
              titleSection
            ],
            ),
        );
    }
}