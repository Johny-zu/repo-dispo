  import 'package:flutter/material.dart';

class TravelHomePage extends StatelessWidget {
  const TravelHomePage ({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img/travel.jpg'),
              fit: BoxFit.cover
        ),
      ),
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Container(
            height: 120,
            width: double.infinity,
            color: Colors.black45,
            child: Center(
              child: Text(
                "Travelocity",
                style: TextStyle(fontSize: 80, fontFamily: 'Signatra', color: Colors.white)
              ),
            ),
          ),
        ),
      ),
    );
  }
}