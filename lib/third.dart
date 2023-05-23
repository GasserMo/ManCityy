import 'package:flutter/material.dart';
import 'constants.dart';
import 'Kits.dart';

class thirdKit extends StatelessWidget {
  const thirdKit({Key? key}) : super(key: key);

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
              third()


            ],),

        ),
      ),
    )
    ;  }
}

class third extends StatelessWidget {
  const third({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Manchester City Third Jersey',
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
                  width:130,height: 130,
                  image: AssetImage('Kits/thirdKit.png'),
                ),
                Image(width:130,height: 130,

                  image: AssetImage('Kits/thirdKit2.png'),
                ),Image(
                  width:130
                  ,height: 130,
                  image: AssetImage('Kits/thirdKit3.webp'),
                ),
              ],
            ),),
          SizedBox(height: 10,),
          Text('Manchester City Goalkeeper Third Jersey',
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
                  image: AssetImage('Kits/thirdKeeper.webp'),
                ),
                Image(width:130,height: 130,
                  color: Colors.transparent,
                  image: AssetImage('Kits/thirdKeeper2.webp',
                  ),
                ),Image(
                  width:130
                  ,height: 130,
                  image: AssetImage('Kits/thirdkeeper3.png'),
                ),
              ],
            ),
          )


        ],
      ),
    );
  }
}
