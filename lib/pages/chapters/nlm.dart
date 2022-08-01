import 'package:flutter/material.dart';
import 'package:prof_photon2/pages/chapters/questions/ques_on_nlm.dart';

class NLM extends StatefulWidget {
  const NLM({Key? key}) : super(key: key);

  @override
  State<NLM> createState() => _NLMState();
}

class _NLMState extends State<NLM> {
  @override
  Widget build(BuildContext context) {

    final PageController controller = PageController();

    return Scaffold(
      extendBody: true,

      appBar: AppBar(
        shadowColor: Colors.white,
        backgroundColor: Colors.white,
        leading: IconButton(color: Colors.black, onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back)),
        title: Text("NLM",
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w900,
          fontSize: 32,
          letterSpacing: 2,
          color: Colors.black
        ),),
      ),
      body: PageView(
        /// [PageView.scrollDirection] defaults to [Axis.horizontal].
        /// Use [Axis.vertical] to scroll vertically.
        controller: controller,
        children: <Widget>[
      LayoutBuilder(
      builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all()
                ),
                padding: EdgeInsets.all(10),
                // constraints: BoxConstraints(
                //   minHeight: viewportConstraints.maxHeight,
                //     ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                      Container(
                        child: Text("The Beginning",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                            color: Colors.black
                        ),),
                      ),
                      Divider(
                        height: 21,
                        color: Colors.black26,
                        endIndent: 10,
                      ),
                      Container(
                      // Another fixed-height child.
                      child: Text('''Although we are talking about Newton's Law of motion, but factually, the original work, 
particularly the first law, was given by Galileo. Descartes also had some role to play. 
Newton (1642 - 1727) was born in the same year as Galileo died, and took his work further.''',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Montserrat',
                        color: Colors.black,
                        letterSpacing: 1.0
                      ),),
                      ),
                    SizedBox(height: 24,),
                    Container(
                      child: const Text('''Before about 1600, scientists believed that the natural state of matter was the state of rest.
Observations showed that moving objects eventually stopped moving. Galileo was the first to take a different approach to motion and the natural state of matter. 
He devised through experiments and concluded that it is not the nature of an object to stop once set in motion : rather, it is its nature to resist changes in its motion. 
In his words, “Any velocityonce imparted to a moving body will be maintained as long as the external forces are absent. 
“For example, a spacecraft drifting through empty space with its engine turned off will keep moving forever it would not seek a “natural state” of rest.''',
                      style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Montserrat',
                          color: Colors.black,
                        letterSpacing: 1.0
                      ),),
                    ),
                    ],
                  ),
                ),
            ),
            );
          },
          ),
          // Center(
          //   child: Text('First Page'),
          // ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    padding: EdgeInsets.all(10),
                    // constraints: BoxConstraints(
                    //   minHeight: viewportConstraints.maxHeight,
                    //     ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: Text("Galileo's law of motion (1564 - 1642):",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.black
                            ),),
                        ),
                        Divider(
                          height: 21,
                          color: Colors.black26,
                          endIndent: 10,
                        ),
                        Container(
                          // Another fixed-height child.
                          child: Text('''Galileo concluded that anyobject in motion, if not obstructed will continue to move with constant speed along the horizontal line - inertia.''',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                letterSpacing: 1.0
                            ),),
                        ),
                        SizedBox(height: 24,),
                        Container(
                          child: const Text('''It was later Newton who told that it is the force that alters body's motion. He used calculus to prove this result. He also gave geometrical proofs of this.''',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                letterSpacing: 1.0
                            ),),
                        ),
                        SizedBox(height: 24,),
                        Container(
                          child: Text("Force",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.black
                            ),),
                        ),
                        Divider(
                          height: 21,
                          color: Colors.black26,
                          endIndent: 10,
                        ),
                        Container(
                          // Another fixed-height child.
                          child: Text('''Everyone has a basic understanding of the concept of force from everydayexperience. 
When you push your empty dinner plate away, you exert a force on it. Similarly, you exert a force on a ball when you throw or kick it. 
In these examples, the word Force is associated with muscular activity and some change in the velocityof an object.''',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                letterSpacing: 1.0
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          // Center(
          //   child: Text('Second Page'),
          // ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    padding: EdgeInsets.all(10),
                    // constraints: BoxConstraints(
                    //   minHeight: viewportConstraints.maxHeight,
                    //     ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: Text("Defining Reference Frame",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.black
                            ),),
                        ),
                        Divider(
                          height: 21,
                          color: Colors.black26,
                          endIndent: 10,
                        ),
                        Container(
                          // Another fixed-height child.
                          child: Text('''* It is observer who sees the motion.
* Observer can be a person or a camera.
* We can give this example again''',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                letterSpacing: 1.0
                            ),),
                        ),
                        SizedBox(height: 24,),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all()
                          ),
                          child: Image.asset('assets/A.png'),
                        ),
                        SizedBox(height: 24,),
                        /*Container(
                          child: Text("Force",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.black
                            ),),
                        ),
                        Divider(
                          height: 21,
                          color: Colors.black26,
                          endIndent: 10,
                        ),*/
                        Container(
                          // Another fixed-height child.
                          child: Text('''* Now, we told that observer in car A is the reference frame. It could have been a camera inside the car. Or car as a whole could have been a reference frame.
* Actually we also assume that everyperson carries with him the Cartesian co-ordinate system. This Cartesian co-ordinate system is called the reference frame.''',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                letterSpacing: 1.0
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          // Center(
          //   child: Text('Third Page'),
          // )
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all()
                    ),
                    padding: EdgeInsets.all(10),
                    // constraints: BoxConstraints(
                    //   minHeight: viewportConstraints.maxHeight,
                    //     ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      //mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                          child: Text("Inertial Reference Frame",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.black
                            ),),
                        ),
                        Divider(
                          height: 21,
                          color: Colors.black26,
                          endIndent: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all()
                          ),
                          child: Image.asset('assets/P1.png'),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          // Another fixed-height child.
                          child: Text('''* P1 observes P2 to be moving upwards with 5 m/s.
* P2 observes himself to be at rest.''',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                letterSpacing: 1.0
                            ),),
                        ),
                        SizedBox(height: 24,),
                        /*Container(
                          child: Text("Force",
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.w700,
                                fontSize: 28,
                                color: Colors.black
                            ),),
                        ),
                        Divider(
                          height: 21,
                          color: Colors.black26,
                          endIndent: 10,
                        ),*/
                        Container(
                          // Another fixed-height child.
                          child: Text('''Conclusion:''',
                            style: TextStyle(
                                fontSize: 28,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                              fontWeight: FontWeight.w700
                            ),),
                        ),
                        Divider(
                          height: 21,
                          color: Colors.black26,
                          endIndent: 10,
                        ),
                        Container(
                          // Another fixed-height child.
                          child: Text('''a) Observer is the reference frame.
b) Observer can be anything. It can be a person, a camera, or an object also.
c) Different reference frame maymeasure different velocities.
d) Likewise acceleration can also be different in different reference frame.
* Inertial reference frame is special kind of reference frame whose acceleration is zero.
* According to Newton, everyobject in the universe attracts everyother object by some force.And
if force is there acceleration will be there.And if an object is accelerated, it cannot be inertial.
* Therefore, inertial frame is an ideal concept only.
* For practical purposes, we take (assume) Earth as inertial reference frame even though it has
some acceleration. This is because Earth's acceleration, (due to rotation and revolution) is much
smaller (0.034 m/s2) than the accelerations that we notice in daily life. For example, acceleration
due to gravity (g = 9.8 m/s2
).
* How do we know Earth is accelerating?
Because its velocity is changing (atleast direction) and we know that if velocity is changing,
acceleration must be there.
''',
                            style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                letterSpacing: 1.0
                            ),),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
          LayoutBuilder(
            builder: (BuildContext context, BoxConstraints viewportConstraints) {
              return SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all()
                        ),
                        padding: EdgeInsets.all(10),
                        // constraints: BoxConstraints(
                        //   minHeight: viewportConstraints.maxHeight,
                        //     ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          //mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Container(
                              child: Text("Drawing FBD of the following diagram",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24,
                                    color: Colors.black
                                ),),
                            ),
                            Divider(
                              height: 21,
                              color: Colors.black26,
                              endIndent: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                              child: Image.asset('assets/T.gif'),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              // Another fixed-height child.
                              child: Text('''Assume that the pulley is massless.
According to Newton's law:
   F = m a
=> T' = 2 x T = m(pulley) x a 
   (m(pulley) = 0)
=> T' - 2T = 0      , T' = 2T
Therefore, the new FBD will be:
''',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                    letterSpacing: 1.0
                                ),),
                            ),
                            //SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(60, 0, 60, 10),
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all()
                                ),
                                child: Image.asset('assets/2T.png'),
                              ),
                            ),
                            /*Container(
                              child: Text("Force",
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 28,
                                    color: Colors.black
                                ),),
                            ),
                            Divider(
                              height: 21,
                              color: Colors.black26,
                              endIndent: 10,
                            ),*/
                            Container(
                              // Another fixed-height child.
                              child: Text('''Important !!!''',
                                style: TextStyle(
                                    fontSize: 28,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700
                                ),),
                            ),
                            Divider(
                              height: 21,
                              color: Colors.black26,
                              endIndent: 10,
                            ),
                            Container(
                              // Another fixed-height child.
                              child: Text('''A pulley can change the direction of the force exerted by a cord.''',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                    letterSpacing: 1.0
                                ),),
                            ),
                            SizedBox(height: 10,),
                            Container(
                              decoration: BoxDecoration(
                                  border: Border.all()
                              ),
                              child: Image.asset('assets/pulley.png'),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> NLMQuestions()));
                        },
                        child: Container(
                          child: Text("Try some Questions",
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
              );
            },
          ),
        ],
      )
      /*SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            padding: EdgeInsets.all(5),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)
                    ),
                    Text("NLM",
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                      letterSpacing: 2
                    ),)
                  ],
                ),
                Container(
                  child: PageView(
                    controller: controller,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(10),
                        child: SingleChildScrollView(
                          child: Container(
                            child: Column(
                              children: <Widget>[
                                Text("Tarannn")
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),*/
    );
  }
}
