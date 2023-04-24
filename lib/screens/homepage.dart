import 'package:flutter/material.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.pink.shade900,
        // appBar: AppBar(
        //   title: Text('Dartinterview'),
        // ),
        body: SafeArea(
            child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const CircleAvatar(
                radius: 70.0,
                backgroundImage: AssetImage('assets/images/ihome.png'),
              ),
              SizedBox(height: 16),
              const Text(
                'Dart Interview',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
              // Card(
              //   color: Colors.white,
              //   margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
              //   child: Padding(
              //     padding: EdgeInsets.all(5.0),
              //     child: Container(
              //       padding: EdgeInsets.all(8.0),
              //       child: ListTile(
              //         leading: Icon(
              //           Icons.timelapse,
              //           color: Colors.pink.shade900,
              //         ),
              //         title: Text('GO TO QUESTION ',
              //             style: TextStyle(
              //               color: Colors.pink.shade900,
              //               fontFamily: 'fonts/SourceSansPro-Regular',
              //               fontSize: 20.0,
              //             )),
              //         trailing: InkWell(
              //           onTap: () {
              //             Navigator.pushNamed(context, '/interview');
              //           },
              //           child: Icon(
              //             Icons.arrow_forward_ios,
              //             color: Colors.pink.shade900,
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(
                width: 300,
                child: Card(
                    elevation: 4, // Increase elevation for a taller card
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16)),
                    color: Colors.white,
                    margin:
                        EdgeInsets.symmetric(vertical: 20.0, horizontal: 35.0),
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      width: 200,
                      height: 50,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.timelapse,
                            color: Colors.pink.shade900,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/interview');
                            },
                            child: Text('GO TO QUESTION ',
                                style: TextStyle(
                                  color: Colors.pink.shade900,
                                  fontFamily: 'fonts/SourceSansPro-Regular',
                                  fontSize: 16.0,
                                )),
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/interview');
                            },
                            child: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.pink.shade900,
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        )));
    //   home: Column(
    //     children: [
    //       Center(child: Text("welcome")),
    //     ],
    //   ),
    // );
  }
}
