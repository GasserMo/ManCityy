import 'package:flutter/material.dart';
import 'main.dart';
import 'mainmenu.dart';
import 'Squad.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:mancity/Fixtures.dart';
class homeScreen extends StatefulWidget {

  @override
  State<homeScreen> createState() => _homeScreenState();
}
class _homeScreenState extends State<homeScreen>with SingleTickerProviderStateMixin {


  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0XFF2388AE).withOpacity(0.5),
                Color(0XFF2388AE).withOpacity(0.7),],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter
            )
          ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
                children: [
                  Container(
                    height: 100,
                    color:Color(0XFF001838),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(onPressed: () {
                          Navigator.pushNamed(context, '/on'
                              '');
                        },
                          icon: Icon(Icons.logout_outlined,
                          color: Colors.white,),
                        ),
                        Image(height: 50,
                          width: 60,
                          image: AssetImage('Images/mancity.png',),
                        ),
                        Text('ManCity',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'CITY'
                          ),),
                      ],
                    ),
                  ),
                 SingleChildScrollView(
                   scrollDirection: Axis.horizontal,
                      child: Row(
                      children: [
                        InkWell(
                          onTap:()=> Navigator.pushNamed(context, '/squad'),
                          child: Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0,right: 8,top: 10),
                            child: Container(
                              height: 200,
                             width: 390,
                              alignment: Alignment.topLeft,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                 colors:[Colors.black.withOpacity(0.3),
                                   Colors.black.withOpacity(0.8)]
                                ),
                                image: DecorationImage(
                                  opacity: 0.6,
                                  fit: BoxFit.cover,
                                  image: AssetImage('Images/citySquad.png')
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Squad",
                                style: TextStyle(
                                    fontFamily: 'Fjalla',
                                    fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),),
                              ),
                            ),
                          ),
                        ),

                      ],),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: ()=> Navigator.pushNamed(context, '/fixtures'),
                        child: Container(
                          height: 200,
                          width: 380,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(left: 10,right: 10),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                opacity: 0.6,
                                image: AssetImage('Images/stadium.png',
                                )
                            ),
                              borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                                colors:[Colors.white.withOpacity(0.1),
                                  Colors.white.withOpacity(0.2)]
                            ),
                          ),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Align(
                                  alignment:Alignment.topLeft,
                                  child: Text("Fixtures",
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        fontFamily: 'Fjalla',
                                        color: Colors.white
                                    ),),
                                ),
                              ),
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:10,left:35.0),
                                    child: Image(
                                      image: AssetImage('Images/mancity.png'),
                                      width: 100,
                                      height: 140,),
                                  )),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: const EdgeInsets.only(top:10,right: 35),
                                    child: Image(
                                      image: AssetImage('Images/mancity.png'),
                                      width: 100,
                                      height: 140,),
                                  )),
                              Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Tue 11 Apr", style: TextStyle(
                                        fontSize: 22,
                                        fontFamily: 'Fjalla',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    )),

                                    Text("Champions League",style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Fjalla',
                                        color: Colors.white
                                    )),
                                    Container(
                                      height: 50,
                                      width: 70,
                                      decoration: BoxDecoration(
                                        color: Colors.white30
                                      ),
                                      child: Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 3.0),
                                            child: Center(
                                              child: Text('22:00',
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontFamily: 'Fjalla',
                                                      color: Colors.white
                                                  )),
                                            ),
                                          ),
                                          Text('PM',
                                            style: TextStyle(
                                             fontSize: 15,
                                               color: Colors.white
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      children: [
                         InkWell(
                           onTap:()=> Navigator.pushNamed(context, '/trophies'),

                           child: Container(
                             height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                     Colors.transparent,
                                      Color(0XFF001838).withOpacity(0.9)
                                    ]
                                  )
                                ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: FaIcon(
                                        size: 30,
                                        color:Color(0XFF001838),
                                          FontAwesomeIcons.trophy
                                      ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                        children: [
                                          Text('OUR TROPHIES',
                                            style: TextStyle(
                                                fontFamily: 'Fjalla',
                                                color: Color(0XFF001838),
                                                fontSize:20
                                            ),),


                                        ],
                                      ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Read about all our Achievements,',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:15
                                      ),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Text('Record and History',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize:15
                                      ),),
                                  ),


                                ],
                              ),

                            ),
                         ),
                        SizedBox(
                          width: 25,
                        ),
                        InkWell(
                          onTap: ()=> Navigator.pushNamed(context, '/homekits'),
                          child: Container(
                            height: 180,
                            width: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Color(0XFF001838).withOpacity(0.9)
                                    ]
                                )                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 50.0),
                                    child: Image(image: AssetImage('Images/kit.webp'),
                                    fit: BoxFit.cover,),
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Kits',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Fjalla',
                                        ),
                                      ),Text(
                                        '2022-23',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontFamily: 'Fjalla',
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              )
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    color:Color(0XFF001838),
                    height: 55,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Image(image: AssetImage('Images/logo2.png'),
                          ),
                        ),
                        VerticalDivider(
                          color: Color(0XFF2388AE),
                          thickness: 2,
                        ),
                        SizedBox(width: 10,),
                        bottomIcon(
                          faIcon:FaIcon(
                              FontAwesomeIcons.facebook,
                              color: Colors.white) ,
                        ),
                        SizedBox(width: 10,),
                        bottomIcon(
                          faIcon:FaIcon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,) ,
                        ),
                        SizedBox(width: 10,),
                        bottomIcon(
                          faIcon:FaIcon(
                            FontAwesomeIcons.youtube,
                            color: Colors.white,) ,
                        ),
                        SizedBox(width: 10,),
                        bottomIcon(
                          faIcon:FaIcon(
                            FontAwesomeIcons.twitter,
                            color: Colors.white,) ,
                        ),
                        SizedBox(width: 10,),
                        InkWell(
                          child: Text('Contact Us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Fjalla',
                            ),),
                        )


                      ],
                    ),
                  )
                ],
                    ),
        ),
        ),


    );
  }
}

class bottomIcon extends StatelessWidget {
  late FaIcon faIcon;
   bottomIcon({
    required this.faIcon
});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        decoration: BoxDecoration(
            shape: BoxShape.circle,
          border: Border.all(
            color: Colors.transparent,

            width: 10,
          )
        ),
        child: faIcon,

      ),
    );
  }
}
class Wave2 extends CustomClipper<Path>{

  @override
  Path getClip(Size size){
    var path=Path();

    path.lineTo(0,size.height*0.3);
    var point1= Offset(size.width*0.25, size.height*0.4);
    var point2= Offset(size.width*0.25, size.height*0.4);
    path.quadraticBezierTo(point1.dx, point1.dy, point2.dx, point2.dy);
    var point3= Offset(size.width*0.5, size.height*0.15);
    var point4= Offset(size.width*0.68, size.height*0.28);
    path.quadraticBezierTo(point3.dx, point3.dy, point4.dx, point4.dy);
    var point5= Offset(size.width*0.85, size.height*0.4);
    var point6= Offset(size.width, size.height*0.1);
    path.quadraticBezierTo(point5.dx, point5.dy, point6.dx, point6.dy);
    path.lineTo(size.height,0);
    path.close();
    return path;
  }
  @override
  bool shouldReclip(covariant CustomClipper<Path>oldClipper){
    return true;
  }
}

/*
Padding(
              padding: const EdgeInsets.only(left: 15.0,top: 39),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  InkWell(
                    onTap: ()=> Navigator.pop(context),
                    child: Icon(Icons.arrow_back_ios,
                      color: Colors.white,),
                  ),
                ],
              ),
            ),
 */