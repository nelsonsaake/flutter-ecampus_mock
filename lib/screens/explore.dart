import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecampus_mockup/constants.dart';
import 'package:ecampus_mockup/components/search.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //
    final cardSlateBoxConstraints = BoxConstraints(
      minHeight: 100,
    );

    //
    return Scaffold(
      //
      backgroundColor: Colors.white,

      //
      body: SingleChildScrollView(
        //
        child: Container(
          //
          child: Column(
            //
            children: [
              //
              CustomAppBar(),

              //
              SizedBox(height: 20),

              //
              Container(
                padding: defaultPadding,
                child: Card(
                  elevation: defaultElevation,
                  borderOnForeground: true,
                  child: Stack(
                    children: [
                      Column(
                        children: [
                          Container(
                            constraints: cardSlateBoxConstraints,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(
                                    "assets/image/pizza o'clock.jpg"),
                                fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            constraints: cardSlateBoxConstraints,
                            padding: defaultPadding,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "PIZZA O'CLOCK: Making the Best Pizza",
                                  softWrap: true,
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(fontSize: 32),
                                ),
                                SizedBox(height: 50),
                                Text(
                                  'Course',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Positioned(
                        top: 70,
                        left: 30,
                        child: Container(
                          constraints: BoxConstraints(
                            minHeight: 0,
                            maxWidth: 120,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius:
                            BorderRadius.all(Radius.circular(8)),
                            color: Colors.white,
                          ),
                          padding: EdgeInsets.all(16),
                          child: RichText(
                            // text: 'School of X',
                            text: TextSpan(
                              text: 'School',
                              style: TextStyle(fontSize: 14, color: Colors.orange[900]),
                              children: [
                                TextSpan(
                                  text: ' of',
                                  style: TextStyle(fontSize: 14, color: Colors.grey),
                                ),
                                TextSpan(
                                  text: ' X',
                                  style: TextStyle(fontSize: 16, color: Colors.red[900]),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget {
  // it takes the custom search widget, and,
  // wrap it with padding, margin and some shadow properties
  const CustomAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //
    final boxShadow = [
      BoxShadow(color: Colors.grey[400], offset: Offset(0, 1))
    ];

    return Container(
      //
      margin: EdgeInsets.only(top: 20),
      padding: defaultPadding,
      decoration: BoxDecoration(boxShadow: boxShadow, color: Colors.white),

      //
      child: Search(),
    );
  }
}
