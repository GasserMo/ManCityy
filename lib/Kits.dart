import 'dart:math';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mancity/Kits.dart';
import 'away.dart';
import 'third.dart';
import 'main.dart';
import 'homeScreen.dart';
import 'constants.dart';
import 'mouse.dart';

class homekits extends StatefulWidget {

  @override
  State<homekits> createState() => _homekitsState();
}

class _homekitsState extends State<homekits> {

  int current=0;
  @override
  Widget build(BuildContext context) {
    return Container(
         color: Color(0XFF98C5E9),
         child: Scaffold(
            backgroundColor: Colors.transparent,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image:DecorationImage(
                image:AssetImage('Images/forKit.png'),
                fit: BoxFit.cover
              )
            ),
                  child:
                    kitTopBar(),






    ),
    ),
    )
    ;
  }
}

class kitTopBar extends StatefulWidget {
  @override
  State<kitTopBar> createState() => _kitTopBarState();
}

class _kitTopBarState extends State<kitTopBar> with TickerProviderStateMixin{
   bool pressed=false;
  @override
  Widget build(BuildContext context) {
    TabController tabController= TabController(length: 3, vsync: this);
    return SingleChildScrollView(
      child: Column(
        children:[
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: ()=> Navigator.pushNamed(context, '/homeScreen'),
                    child: FaIcon(FontAwesomeIcons.backspace,
                    color: Colors.white,),
                  ),
                ),
                Container(
                  height: 40,
                  child: TabBar(
                    labelColor: Color(0XFF2388AE),
                    splashBorderRadius: BorderRadius.circular(10),
                    unselectedLabelColor: Colors.white,
                    labelStyle: TextStyle(
                        fontFamily: 'Fjalla',
                        fontSize:20
                    ),
                    indicatorColor: Color(0XFF2388AE),
                      controller: tabController,
                      tabs: [
                        Tab(
                        child: Text('HOME',
                          ),
                        ),
                        Tab(child: Text('AWAY',
                          ),),
                        Tab(child: Text('THIRD',
                          ),),
                      ]),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                       height: 580,
                    child: TabBarView(
                        controller: tabController,
                        children: [
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                             children: [
                               Text('Manchester City Home Jersey',
                                 style: TextStyle(
                                     fontFamily: 'Fjalla',
                                     color: Colors.white,
                                     fontSize:20),),
                               Text('2022/23',
                                 style: TextStyle(
                                     fontFamily: 'Fjalla',
                                     color: Colors.white,
                                     fontSize:20),),
                               Text('£ 70,00',
                                 style: TextStyle(
                                     fontFamily: 'Fjalla',
                                     color: Colors.white,
                                     fontSize:20),),
                               SizedBox(height: 5,),
                               Container(
                                 decoration: BoxDecoration(
                                     color: Colors.white.withOpacity(0.1),
                                     borderRadius:BorderRadius.circular(10)
                                 ),
                                 height: 170,
                                 width: double.infinity,
                                 child: Row(
                                   children: [
                                     Image(
                                       width:140,height: 140,
                                       image: AssetImage('Kits/firstKit.png'),
                                     ),
                                     Image(width:120,height: 120,

                                       image: AssetImage('Kits/firstKit2.png'),
                                     ),Image(
                                       width:130
                                       ,height: 130,
                                       image: AssetImage('Kits/firstkit3.webp'),
                                     ),
                                   ],

                                 ),),
                               SizedBox(height: 10,),
                               Text('Manchester City Goalkeeper Jersey',
                                 style: TextStyle(
                                     fontFamily: 'Fjalla',
                                     color: Colors.white,
                                     fontSize:20),),
                               Text('2022/23',
                                 style: TextStyle(
                                     fontFamily: 'Fjalla',
                                     color: Colors.white,
                                     fontSize:20),),
                               Text('£ 70,00',
                                 style: TextStyle(
                                     fontFamily: 'Fjalla',
                                     color: Colors.white,
                                     fontSize:20),),
                               Container(
                                 decoration: BoxDecoration(
                                     color: Colors.white.withOpacity(0.1),
                                     borderRadius:BorderRadius.circular(10)
                                 ),
                                 height: 170,
                                 width: double.infinity,
                                 child: Row(
                                   children: [
                                     Image(
                                       width:130,height: 130,
                                       image: AssetImage('Kits/keeperhome.png'),
                                     ),
                                     Image(width:130,height: 130,

                                       image: AssetImage('Kits/keeperhome2.png'),
                                     ),Image(
                                       width:130
                                       ,height: 130,
                                       image: AssetImage('Kits/keeperhome3.png'),
                                     ),
                                   ],
                                 ),
                               )
                             ],
                           ),
                         ),
                          away(),
                         third(),

                        ]),
                  ),
                )
              ],
            ),
          ),
        ]
      ),
    );
  }


  }
MaterialStateProperty<Color>getColor(Color color, Color colorPressed){
  final getColor=(Set<MaterialState>states){
    if(states.contains(MaterialState.pressed)){
      return colorPressed;
    }else{
      return color;
    }
  };
  return MaterialStateProperty.resolveWith(getColor);

}

/*  ButtonStyle(
                   overlayColor: getColor(Colors.white,Color(0XFF01203F))

                )
 */



/* return Container(
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.5)
      ),
      height: 90,
      alignment: Alignment.bottomLeft,
      child: Row(
          children:  [
            Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: TextButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/homeScreen');
                },
                style: ButtonStyle(
                  backgroundColor:getColor(Color(0XFF01203F),
                      Color(0XFF01203F).withOpacity(0.7))
                ),
                child: Icon(
                    color:Colors.white,
                    Icons.backspace_sharp

                ),
              ),
            ),
             SizedBox(width: 10,),
              TextButton(
                 onPressed: (){
                     Navigator.pushNamed(context, '/homekits');
                 },
                style: ButtonStyle(
                    overlayColor: getColor(Colors.white,Color(0XFF01203F))
                ),
                 child: Text('HOME',
                     style: TextStyle(color: Colors.white,
                         fontFamily: 'Fjalla',
                         fontSize:30
                     ),
                      ),
               ),

            SizedBox(width: 10,),
             TextButton(
               onPressed: (){
                 Navigator.pushNamed(context, '/awaykits');
               },
               style: ButtonStyle(
                   overlayColor: getColor(Colors.white,Color(0XFF01203F))

               ),
               child: Text('AWAY',
                    style: TextStyle(
                        fontFamily: 'Fjalla',
                        color: Colors.white,
                        fontSize:30)),
             ),
            SizedBox(width: 10,),
            TextButton(
              onPressed: (){
               Navigator.pushNamed(context, '/thirdkits');
               },
              style: ButtonStyle(
                  overlayColor: getColor(Colors.white,Color(0XFF01203F))
              ),
              child: Text('THIRD',
                    style: TextStyle(
                        fontFamily: 'Fjalla',
                        color: Colors.white,
                        fontSize:30)),
            ),

          ],
        ),

    );
  }

   MaterialStateProperty<Color>getColor(Color color, Color colorPressed){
      final getColor=(Set<MaterialState>states){
        if(states.contains(MaterialState.pressed)){
          return colorPressed;
        }else{
          return color;
        }
      };
     return MaterialStateProperty.resolveWith(getColor);

   }
   */

/* Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Manchester City Home Jersey',
                            style: TextStyle(
                                fontFamily: 'Fjalla',
                                color: Colors.white,
                                fontSize:20),),
                          Text('2022/23',
                            style: TextStyle(
                                fontFamily: 'Fjalla',
                                color: Colors.white,
                                fontSize:20),),
                          Text('£ 70,00',
                            style: TextStyle(
                                fontFamily: 'Fjalla',
                                color: Colors.white,
                                fontSize:20),),
                          SizedBox(height: 5,),
                          Container(
                              decoration: BoxDecoration(
                                color: Colors.white.withOpacity(0.1),
                                borderRadius:BorderRadius.circular(10)
                              ),
                              height: 170,
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Image(
                                    width:140,height: 140,
                                        image: AssetImage('Kits/firstKit.png'),
                                      ),
                                  Image(width:120,height: 120,

                                    image: AssetImage('Kits/firstKit2.png'),
                                  ),Image(
                                    width:130
                                    ,height: 130,
                                    image: AssetImage('Kits/firstkit3.webp'),
                                  ),
                                ],
                              ),),
                          SizedBox(height: 10,),
                          Text('Manchester City Goalkeeper Jersey',
                            style: TextStyle(
                                fontFamily: 'Fjalla',
                                color: Colors.white,
                                fontSize:20),),
                          Text('2022/23',
                            style: TextStyle(
                                fontFamily: 'Fjalla',
                                color: Colors.white,
                                fontSize:20),),
                          Text('£ 70,00',
                            style: TextStyle(
                                fontFamily: 'Fjalla',
                                color: Colors.white,
                                fontSize:20),),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.white.withOpacity(0.1),
                                  borderRadius:BorderRadius.circular(10)
                              ),
                              height: 170,
                              width: double.infinity,
                             child: Row(
                            children: [
                              Image(
                                width:130,height: 130,
                                image: AssetImage('Kits/keeperhome.png'),
                              ),
                              Image(width:130,height: 130,

                                image: AssetImage('Kits/keeperhome2.png'),
                              ),Image(
                                width:130
                                ,height: 130,
                                image: AssetImage('Kits/keeperhome3.png'),
                              ),
                            ],
                          ),
                            )


                        ],
                      ),
                      */


