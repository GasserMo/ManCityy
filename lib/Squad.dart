import 'package:flutter/material.dart';

import 'dart:math';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mancity/constants.dart';

class squad extends StatefulWidget {
  @override
  State<squad> createState() => _squadState();
}
late Color playerDetails= babyBlue;

class _squadState extends State<squad> {
  late Color _backgroundColor= babyBlue;
  late Color _container= darkBlue;
  late Color darkModeIcon= Colors.white;
  late Color backSpace= Colors.white;
  void _changeBackground(){
    setState(() {
      _backgroundColor= _backgroundColor== babyBlue? darkBlue:babyBlue;
      _container= _container==  darkBlue? babyBlue: darkBlue;
     darkModeIcon= darkModeIcon==Colors.white? darkBlue: Colors.white;
      backSpace = backSpace==Colors.white? darkBlue: Colors.white;
      playerDetails = playerDetails==babyBlue? darkBlue: babyBlue;

    });
  }


  @override
  Widget build(BuildContext context) {
    return Container(
        color: Color(0XFF98C5E9),
        child: Scaffold(
          backgroundColor: _backgroundColor,
          body: Container(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    height: 100,
                    color: _container,
                    child: Stack(
                      children: [
                         Padding(
                           padding: const EdgeInsets.only(top: 35.0,left: 8.0),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               InkWell(
                                  onTap: ()=> Navigator.pushNamed(context, '/homeScreen'),
                                  child: FaIcon(FontAwesomeIcons.backspace,
                                    color: backSpace,),
                                ),
                               TextButton(onPressed: ()=> _changeBackground()
                               , child: Icon(
                                     Icons.dark_mode,
                                     color: darkModeIcon,
                                   )),
                             ],
                           ),
                         ),
                        Column(
                          children: [
                            Center(
                              child: Image(
                                  height: 50,
                                  width: 50,
                                  image: AssetImage('Images/mancity.png')),
                            ),
                            Center(
                              child: Text("Squad",style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                              ),),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 10),
                                  child: Text("GOALKEEPERS",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                        fontWeight: FontWeight.bold
                                    ),))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            playerCard(image: AssetImage('Players/ederson.webp'),
                                name: 'Ederson'
                                , number: '31'
                                , nationality: AssetImage('Nationalities/brazil2.png')),
                            playerCard(image: AssetImage('Players/ortega.webp'),
                                name: 'Stefan Ortega'
                                , number: '31'
                                , nationality: AssetImage('Nationalities/germany.jpg')),

                            playerCard(image: AssetImage('Players/scott.webp'),
                                name: 'Scott Carson'
                                , number: '31'
                                , nationality: AssetImage('Nationalities/england.png')),
                            playerCard(image: AssetImage('Players/zack.webp'),
                                name: 'Zack Steffen'
                                , number: '31'
                                , nationality: AssetImage('Nationalities/america.png'))

                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 10),
                                  child: Text("DEFENDERS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                    ),))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            playerCard(image: AssetImage('Players/johnStones.webp'),
                                name: 'John Stones'
                                , number: '5'
                                , nationality: AssetImage('Nationalities/england.png')),
                            playerCard(image: AssetImage('Players/aymericLaporte.webp'),
                                name: 'Aymeric Laporte'
                                , number: '14'
                                , nationality: AssetImage('Nationalities/spain.png')),

                            playerCard(image: AssetImage('Players/kyleWalker.webp'),
                                name: 'Kyle Walker'
                                , number: '2'
                                , nationality: AssetImage('Nationalities/england.png')),
                            playerCard(image: AssetImage('Players/rubenDias.webp'),
                                name: 'Rúben Dias'
                                , number: '3'
                                , nationality: AssetImage('Nationalities/portugal.png')),
                            playerCard(image: AssetImage('Players/manuelAkanji.webp'),
                                name: 'Manuel Akanji'
                                , number: '25'
                                , nationality: AssetImage('Nationalities/switz.png')),
                            playerCard(image: AssetImage('Players/sergiogomez.webp'),
                                name: 'Sergio Gómez'
                                , number: '21'
                                , nationality: AssetImage('Nationalities/spain.png')),
                            playerCard(image: AssetImage('Players/nathanAke.webp'),
                                name: 'Nathan Aké'
                                , number: '6'
                                , nationality: AssetImage('Nationalities/dutch.png')),
                            playerCard(image: AssetImage('Players/joshuaWilson.webp'),
                                name: 'Joshua Wilson'
                                , number: '97'
                                , nationality: AssetImage('Nationalities/england.png')),
                            playerCard(image: AssetImage('Players/joaoCancelo.webp'),
                                name: 'João Cancelo'
                                , number: '7'
                                , nationality: AssetImage('Nationalities/portugal.png')),
                            playerCard(image: AssetImage('Players/ricoLewis.webp'),
                              name: 'Rico Lewis'
                              , number: '7'
                              , nationality: AssetImage('Nationalities/england.png'))
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 10),
                                  child: Text("MIDFIELDERS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                    ),))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            playerCard(image: AssetImage('Players/bernardoSilva.webp'),
                                name: 'Bernardo Silva'
                                , number: '20'
                                , nationality: AssetImage('Nationalities/portugal.png')),
                            playerCard(image: AssetImage('Players/ilkayGundogan.webp'),
                                name: 'Ilkay Gündogan'
                                , number: '8'
                                , nationality: AssetImage('Nationalities/germany.jpg')),
                            playerCard(image: AssetImage('Players/jackGrealish.webp'),
                                name: 'Jack Grealish'
                                , number: '10'
                                , nationality: AssetImage('Nationalities/england.png')),

                            playerCard(image: AssetImage('Players/kalvinphillips.webp'),
                                name: 'Kalvin Phillips'
                                , number: '4'
                                , nationality: AssetImage('Nationalities/england.png')),
                            playerCard(image: AssetImage('Players/Rodri.webp'),
                                name: 'Rodri'
                                , number: '16'
                                , nationality: AssetImage('Nationalities/spain.png')),
                            playerCard(image: AssetImage('Players/colePalmer.webp'),
                                name: 'Cole Palme'
                                , number: '80'
                                , nationality: AssetImage('Nationalities/england.png')),
                            playerCard(image: AssetImage('Players/kevindebruyne.webp'),
                                name: 'Kevin De Bruyne'
                                , number: '31'
                                , nationality: AssetImage('Nationalities/belgium.png')),
                            playerCard(image: AssetImage('Players/philFoden.webp'),
                                name: 'Phil Foden'
                                , number: '47'
                                , nationality: AssetImage('Nationalities/england.png')),


                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top:5,left: 10),
                                  child: Text("FORWARDS",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                    ),))
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            playerCard(image: AssetImage('Players/erlingHaaland.webp'),
                                name: 'Erling Haaland'
                                , number: '9'
                                , nationality: AssetImage('Nationalities/norway.webp')),
                            playerCard(image: AssetImage('Players/riyadmahrez.webp'),
                                name: 'Riyad Mahrez'
                                , number: '19'
                                , nationality: AssetImage('Nationalities/algeria.webp')),

                            playerCard(image: AssetImage('Players/julianAlvarez.webp'),
                                name: 'Julián Álvarez'
                                , number: '26'
                                , nationality: AssetImage('Nationalities/argentin.png')),


                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
  }
}

class playerCard extends StatelessWidget {
  final String number;
  final String name;
  final AssetImage image;
  final AssetImage nationality;
  playerCard({ required this.image,required this.name,required this.number,
  required this.nationality
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 200,
      width: 200,
      child: Card(
        color: Color(0XFF98C5E9),
        child: Stack(
          children: [
            Card(
              child: Image(
                width: 220,
                image: AssetImage('Images/card.png'),
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.all(10),
                child:
                  Text(number,
                    style: TextStyle(
                      fontFamily: 'Fjalla',
                        fontWeight: FontWeight.w700,
                        fontSize: 30,
                        color:  Color(0XFF001838)
                    ),),
                
              ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundImage:nationality ,
                  ),
                )

              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                    height:160,
                    width: 160,
                    image: image),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            Color(0XFF98C5E9).withOpacity(0.2),
                            Color(0XFF98C5E9).withOpacity(0.9)
                          ]
                      )
                  ),
                  child: Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0XFF001838),
                        fontFamily: 'Fjalla',
                        fontSize:25
                    ),),
                )
              ],
            ),

          ],
        ) ,
      ),
    );
  }
}
/*Color(0XFFAAD366),
          Colors.black],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.7,1]*/




