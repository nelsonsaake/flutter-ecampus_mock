import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecampus_mockup/constants.dart';
import 'package:ecampus_mockup/components/search.dart';

class Explore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        //
        padding: EdgeInsets.all(defaultPadding),
        margin: EdgeInsets.only(top: noAppBarTopMargin),

        child: Column(
          children: [
            //
            Search(),
            Container(

              //
              constraints: BoxConstraints(
                minHeight: 200,
              ),

              //
              child: Stack(
                children: [
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 100,
                    ),
                    color: Colors.white,
                  ),
                  Container(
                    constraints: BoxConstraints(
                      minHeight: 100,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
