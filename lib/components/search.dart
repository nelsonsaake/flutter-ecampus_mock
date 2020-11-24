import 'package:ecampus_mockup/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  // widget variables

  final controller = TextEditingController(text: eminemKillShotRap);

  int maxLines;

  double searchTextSize;

  @override
  void initState() {

    maxLines = 1;

    searchTextSize = 24;

    super.initState();
  }

  void onFocusChanged(bool hasfocus) {
    final int onFocusMaxLines = 5;
    final double onFocusSearchTextSize = 32.0;

    final int offFocusLines = 1;
    final double offFocusSearchTextSize = 24.0;

    if (hasfocus) {
      setState(() {
        maxLines = onFocusMaxLines;
        searchTextSize = onFocusSearchTextSize;
      });
    } else {
      setState(() {
        maxLines = offFocusLines;
        searchTextSize = offFocusSearchTextSize;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final searchInputDecoration = InputDecoration(
      //
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),

      //
      contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),
    );

    return Container(

      //
      constraints: BoxConstraints(
        minWidth: MediaQuery.of(context).size.width,
        minHeight: 200
      ),

      color: Theme.of(context).primaryColor,

      //
      child: /*Material*/ Container(
        // elevation: 5,
        // borderRadius: BorderRadius.all(Radius.circular(8)),

        //
        child: Row(

          //
          children: [
            // search keyword input
            // FocusScope(
            //   onFocusChange: (bool hasfocus) => onFocusChanged(hasfocus),
            //   child: TextField(
            //     // adds padding, border radius, outline
            //     decoration: searchInputDecoration,
            //
            //     // when in focus, the text would be larger
            //     style: TextStyle(fontSize: searchTextSize),
            //
            //     // I use the variable because this property will change overtime
            //     // when in focus it would display more than one line of text
            //     // otherwise just display one line
            //     keyboardType: TextInputType.text,
            //     minLines: 1,
            //     maxLines: maxLines,
            //
            //     // for now, just use it to set the text
            //     controller: controller,
            //
            //     // to provide suggestions
            //     enableSuggestions: true,
            //   ),
            // ),

            TextField(
              // adds padding, border radius, outline
              decoration: searchInputDecoration,

              // when in focus, the text would be larger
              // style: TextStyle(fontSize: searchTextSize),

              // I use the variable because this property will change overtime
              // when in focus it would display more than one line of text
              // otherwise just display one line
              keyboardType: TextInputType.text,
              minLines: 1,
              maxLines: maxLines,

              // for now, just use it to set the text
              // controller: controller,

              // to provide suggestions
              // enableSuggestions: true,
            ),

            //
            IconButton(
              icon: Icon(Icons.search, color: Theme.of(context).primaryColor),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
