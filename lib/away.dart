import 'package:flutter/material.dart';
import 'constants.dart';
import 'Kits.dart';
class awayKit extends StatelessWidget {
  const awayKit({Key? key}) : super(key: key);

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kitTopBar(),
              away()


            ],),

        ),
      ),
    )
    ;
  }
}

class away extends StatelessWidget {
  const away({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Manchester City Away Jersey',
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
                  image: AssetImage('Kits/awayKit.png'),
                ),
                Image(width:120,height: 120,

                  image: AssetImage('Kits/awayKit2.png'),
                ),Image(
                  width:120
                  ,height: 120,
                  image: AssetImage('Kits/awayKit3.png'),
                ),
              ],
            ),),
          SizedBox(height: 10,),
          Text('Manchester City Goalkeeper Away Jersey',
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
                  width:170,height: 170,
                  image: AssetImage('Kits/keeperAway.png'),
                ),
                SizedBox(width: 30,),
                Image(width:150,height: 150,

                  image: AssetImage('Kits/keeperAway2.png'),
                )
              ],
            ),
          )


        ],
      ),
    );
  }
}
