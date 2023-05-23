
import 'package:flutter/material.dart';


class Fixtures extends StatefulWidget {
  const Fixtures({Key? key}) : super(key: key);

  @override
  State<Fixtures> createState() => _FixturesState();
}

class _FixturesState extends State<Fixtures> {

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
        color: Color(0XFF001838)
    ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          child: Column(
            children: [
              MatchDetails(),
              MatchDetails(),
              MatchDetails(),
              MatchDetails(),

            ],
          ),
        ),
      ),
    );


  }
}

class MatchDetails extends StatelessWidget {
  const MatchDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 38.0),
      child: Container(
        height: 150,
        width: 380,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 10,right: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white.withOpacity(0.5)
        ),
        child: Stack(
          children: [
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
    );
  }
}
