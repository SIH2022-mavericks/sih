import 'package:flutter/material.dart';

class aboutus extends StatelessWidget {
  const aboutus({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:50.0,left:110),
            child: Text("About Us", style: TextStyle(fontWeight: FontWeight.bold, color:Color(0xFF21295c),fontSize: 40)),
          ),
          SizedBox(height:20),
          Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Image.asset('assets/images/aboutus1.png')),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Text("To evaluate it's accuracy \nand in order to develop \nspecies-specific advisories \nit is necessary to collect the \nfish-catch information \nat the species level. \nWhile fisherfolk are supportive \nto these efforts, often \nspecies level catch \nreporting is having hinderances \ndue to several reasons pertaining \nto manual efforts \nwhich results to low or \nerroneous reporting.",style: TextStyle( color:Color(0xFF21295c),fontSize: 15)),
              ),
            ],
          ),
          SizedBox(height:20),
          Row(
            children: [
              
              Padding(
                padding: const EdgeInsets.only(left:20.0, right: 12.0),
                child: Text("This is a AI- ML based tool \nfor image-based identification \nof fish species \nfound in the Indian seas. \nFishermen need to take \na photo of fishes caught.\nGet instantaneous, \naccurate results.",style: TextStyle( color:Color(0xFF21295c),fontSize: 15)),
              ),
              Container(
                width: MediaQuery.of(context).size.width / 2.5,
                child: Image.asset('assets/images/aboutus2.png')),
            ],
          )
        ],
      ),
    );
  }
}