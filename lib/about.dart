import 'package:flutter/material.dart';

class about extends StatelessWidget {





  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      backgroundColor: Colors.grey,


      body:




      Container(


        decoration: new BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/sign.png'),
            fit: BoxFit.cover,
          ),
        ),



        padding: EdgeInsets.all(11.0),
        child: Column(


            children: [
              SizedBox(height: 15),


              SizedBox(height: 20),
              Text.rich(
                TextSpan(text: "Agriculture is one of the oldest and most important professions in the world. As the world population continues to grow and land becomes more scarce, people have needed to get creatives and become more efficient about how they farm, using less land to produce more crops, control pests, monitor soul and growing conditions, organise data for farmers. AI systems can also help improve harvest quality and quantity, aid detection of diseases, identify pests and poor soul nutrition and reduce the quantity of herbicide, and pesticide used.                                                                             "),
                style: new TextStyle(


                  fontWeight: FontWeight.bold,
                  fontSize: 18.0, color: Colors.white,
                ),
              ),


              SizedBox(height: 120),

             Text.rich(
                TextSpan(text: ""),
                style: new TextStyle(
                  fontWeight: FontWeight.bold,


                  fontSize:12, color: Colors.redAccent,
                ),
              ),







            ]



        ),


      ),

    );
  }
}

