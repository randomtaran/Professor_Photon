import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:prof_photon2/pages/chapters/nlm.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  State<HomePage> createState() => _HomePageState();
}

double? _percent=0.45;
class _HomePageState extends State<HomePage> {

  // _HomePageState(){
  //   _percent = 0.33;
  // }
  int _selectedIndex=0;


  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }



  @override
  Widget build(BuildContext context) {
    void Press(){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>NLM()));
    }
    // var size=MediaQuery.of(context).orientation;
    // print(size);

    final List<Widget> _pages= <Widget>[
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/Professor_Photon.gif'),
            ),
            // AspectRatio(
            //     aspectRatio: 4/3,
            //     child: Lottie.network('https://assets7.lottiefiles.com/packages/lf20_i9mtrven.json')
            // ),
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                // color: Colors.white24,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    //   Image(
                    //     height: 200,
                    //     width: 200,
                    //     image: AssetImage('assets/prof.jpg',
                    //     )
                    // ),
                    CircularPercentIndicator(
                      radius: 40.0,
                      lineWidth: 10.0,
                      animation: true,
                      percent: _percent!,
                      center: new Text(
                        "${_percent!*100}%",
                        style:
                        new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            fontFamily: 'Montserrat'
                        ),
                      ),
                      // footer: new Text(
                      //   "Your Progress",
                      //   style:
                      //   new TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       fontSize: 17.0,
                      //       fontFamily: 'PlayfairDisplay'
                      //   ),
                      // ),
                      circularStrokeCap: CircularStrokeCap.round,
                      progressColor: Colors.deepPurple,
                    ),
                    SizedBox(width: 5,),
                    Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Hi, Taranjit Singh",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900
                              ),),
                            SizedBox(height: 8,),
                            Text('Solve 3 problems daily to start a streak',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontSize: 12,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.normal
                              ),),
                            SizedBox(height: 8,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('2 Longest streak',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      color: Colors.black54
                                  ),),
                                SizedBox(width: 10,),
                                Text('1 Lesson completed',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontFamily: 'Montserrat',
                                      color: Colors.black54
                                  ),)
                              ],
                            )

                          ],
                        )
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              //height: 10,
              color: Colors.black54,
              indent: 25,
              endIndent: 25,
              thickness: 2,
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.black26
                            ),
                            child: Image(image: AssetImage('assets/mg.png'))
                        ),
                        SizedBox(height: 5,),
                        Text("Newton's Law of Motion",
                          style: TextStyle(
                            fontSize: 20,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                          ),),
                        SizedBox(height: 2,),
                        Text("Three statements describing the relations between the forces acting on a body and the motion of the body",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal,
                              color: Colors.black54
                          ),),
                        SizedBox(height: 2,),
                        ElevatedButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> NLM()));
                          },
                          child: Center(
                            child: Text("Start Chapter",
                              style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                              ),),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurple,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text('Explore More',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 24,
                        fontWeight: FontWeight.w900
                    ),),
                  SizedBox(height: 20,),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 275.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          width: 300.0,
                          decoration: BoxDecoration(
                            border: Border.all(),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,

                            children: <Widget>[
                              Image.asset('assets/X.png'),
                              SizedBox(height: 10,),
                              Text("Projectile Motion",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 300.0,
                          color: Colors.blue,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 300.0,
                          color: Colors.green,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 300.0,
                          color: Colors.yellow,
                        ),
                        SizedBox(width: 10,),
                        Container(
                          width: 300.0,
                          color: Colors.orange,
                        ),
                      ],
                    ),
                  )
                  // Container(
                  //   child: ListView(
                  //     scrollDirection: Axis.horizontal,
                  //     children: <Widget>[
                  //           Container(
                  //             decoration: BoxDecoration(
                  //               border: Border.all(),
                  //               ),
                  //            child: Image.asset('assets/X.png'),
                  //           ),
                  //     ],
                  //   ),
                  // )

                ],
              ),
            )
          ],
        ),
      ),
      SingleChildScrollView(),
      SingleChildScrollView()
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.purple,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15.0,
            fontFamily: 'Montserrat'
        ),
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 12.0,
            fontFamily: 'Montserrat'
        ),
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_android_sharp),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_sharp),
            label: 'Courses',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.insert_chart),
            label: 'Stats',
          ),
        ],
      ),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SafeArea(
          child: IndexedStack(
              index: _selectedIndex,
              children: _pages
          )
      ),
    );
  }
}


