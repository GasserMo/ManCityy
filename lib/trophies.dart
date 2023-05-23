import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'records.dart';
class trophies extends StatelessWidget {
  const trophies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: Color(0XFF98C5E9),
        ),
    child: Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        child: Column(
          children: [
          Container(
          height: 100,
          color:Color(0XFF001838),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 35.0,left: 8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: ()=> Navigator.pushNamed(context, '/homeScreen'),
                      child: FaIcon(FontAwesomeIcons.backspace,
                        color: Colors.white,),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      height: 50,
                      width: 50,
                      image: AssetImage('Images/mancity.png')),
                  Center(
                    child:Text('ManCity',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: 'CITY'
                      ),),
                  ),
                ],
              ),

            ],
          ),
        ),
          SizedBox(
            height: 5,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Row(
                  children: [
                    TextButton(
                      onPressed: ()=> Navigator.pushNamed(context, '/trophies'),
                      child: Container(
                        alignment: Alignment.center,
                        width: 140,
                        height: 40
                        ,decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color:Color(0XFF001838),
                        ),
                        child:Text('Trophies',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontFamily: 'Fjalla'
                          ),),
                      ),
                    ),
                    TextButton(
                      onPressed: ()=> Navigator.pushNamed(context, '/records'),
                      child: Container(
                        alignment: Alignment.center,
                        width: 140,
                        height: 40
                        ,decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color:Colors.white,
                      ),
                        child:Text('Records',
                          style: TextStyle(
                              color:Color(0XFF001838),
                              fontSize: 30,
                              fontFamily: 'Fjalla'
                          ),),
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              trophy(
                image: AssetImage('trophy/premier.png'),
                titleName: '9X ENGLISH CHAMPIONS',
                years: '22/23, 21/22, 20/21, 18/19,\n17/18,13/14, 11/12, 67/68,\n36/37'
              ),
              SizedBox(height: 10,),
              trophy(
                  image: AssetImage('trophy/facup.png'),
                  titleName: '6X FA CUP WINNERS',
                  years: '18/19 ,  10/11 ,  68/69 ,\n55/56 ,  33/34 ,  1903/04'
              ),
              SizedBox(height: 10,),
              trophy(
                  image: AssetImage('trophy/carabao.png'),
                  titleName: '8X ENGLISH LEAGUE CUP WINNER',
                  years: '20/21 ,  19/20 ,  18/19 ,\n17/18 , 15/16 ,  13/14 ,  75/76,\n69/70'
              ),SizedBox(height: 10,),
              trophy(
                  image: AssetImage('trophy/community.png'),
                  titleName: '6X ENGLISH SUPERCUP WINNER',
                  years: '19/20 ,  18/19 ,  12/13 ,\n72/73 ,  68/69 ,  37/38'
              ),
              SizedBox(height: 10,),
              trophy(
                  image: AssetImage('trophy/uefacup.png'),
                  titleName: '1X UEFA CUP WINNERS CUP',
                  years: '19/20 ,  18/19 ,  12/13 ,\n72/73 ,  68/69 ,  37/38'
              ),
            ],
          )
        ],
        ),
      ),
    ),
    ) ;
  }
}

class trophy extends StatelessWidget {
     String titleName;
     AssetImage image;
     String years;
     trophy({ required this.image, required this.titleName,
     required this.years});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14,right: 14),
      child: Container(
        height: 200,
        width: 400,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
            color:Color(0XFF001838).withOpacity(0.6),
              spreadRadius: 5,
              blurRadius: 20,

              // changes position of shadow
            ),
          ],
          gradient: LinearGradient(
            colors: [
            Color(0XFF98C5E9).withOpacity(0.7),
              Colors.white.withOpacity(0.7),
            ],
            begin: Alignment.center,
            end: Alignment.bottomCenter
          ),
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(titleName,
                style: TextStyle(
                    color:Color(0XFF001838),
                    fontSize: 22,
                    fontFamily: 'Fjalla'
                ),),
            ),
            Divider(height: 6,
              thickness:1,
              color:Color(0XFF001838) ,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  width: 150,
                  height: 150,
                  image:image,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text( years,
                        style: TextStyle(
                            color:Color(0XFF001838),
                            fontSize: 20,
                            fontFamily: 'Fjalla'
                        ),),
                    ),],
                ),

              ],
            ),
          ],
        ),

      ),
    );
  }
}
