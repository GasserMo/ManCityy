import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mancity/category.dart';
import 'package:mancity/categoryItem.dart';
import 'package:mancity/constants.dart';
import 'package:mancity/homeScreen.dart';
import 'trophies.dart';
import 'category.dart';
import 'utils.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class records extends StatelessWidget {
   records({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color:Color(0XFF001838).withOpacity(0.2),
            ),
          ],
          gradient: LinearGradient(
              colors: [
                babyBlue.withOpacity(0.7),
                Colors.white.withOpacity(0.7),
              ],
              begin: Alignment.center,
              end: Alignment.bottomCenter
          ),
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
                   Center(
                     child: Image(
                         height: 50,
                         width: 50,
                         image: AssetImage('Images/mancity.png')),
                   ),
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
         ),SizedBox(
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
                           borderRadius: BorderRadius.circular(20),
                           color:Colors.white,
                         ),
                           child:Text('Trophies',
                             style: TextStyle(
                                 color:Color(0XFF001838),
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
                           color:Color(0XFF001838),
                         ),
                           child:Text('Records',
                             style: TextStyle(
                                 color: Colors.white,
                                 fontSize: 30,
                                 fontFamily: 'Fjalla'
                             ),),
                         ),
                       ),
                     ],
                   ),
                 ),
                  recordsBreaker(),
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
           ],
         ),

      ),
    ));
  }
}

class recordsBreaker extends StatelessWidget {
  const recordsBreaker({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: ScrollController(
        initialScrollOffset: 0,
        keepScrollOffset: true
      ),
      scrollDirection: Axis.vertical,
      itemCount:categories.length,
        shrinkWrap: true,
        itemBuilder:(ctx,index){
        return  Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                  Text('- ' +categories[index].record,
                      style: TextStyle(
                          color: Color(0XFF001838),
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Fjalla'
                      ),),
                  SizedBox(height: 10),
                  Text('- '+categories[index].achiever,
                    style: TextStyle(
                        color: Colors.white70,
                        fontSize: 25,
                        fontFamily: 'Fjalla'
                    ),),
                  SizedBox(height: 10,)
                ]
              ),

          );
        }
        );
  }
}

/*class recordsDone extends StatelessWidget {
  String record;
  String achiever;
   recordsDone({
    required this.record, required this.achiever
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       Padding(
         padding: const EdgeInsets.only(left: 8.0),
         child: Text(record,
            style: TextStyle(
                color: Color(0XFF001838),
                fontSize: 25,
                fontFamily: 'Fjalla'
            ),),
       ),SizedBox(
          height: 4,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(achiever,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontFamily: 'Fjalla'
              ),),
        ),
        SizedBox(
          height: 5,
        )

      ],

    );
  }
}*/

