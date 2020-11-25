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

  Color suffixIconColor;

  @override
  void initState() {
    maxLines = 1;

    searchTextSize = 24;

    suffixIconColor = Colors.grey;

    super.initState();
  }

  void onFocusChanged(bool hasfocus) {
    final int onFocusMaxLines = 5;
    final double onFocusSearchTextSize = 32.0;
    final Color onFocusSuffixIconColor = Theme.of(context).primaryColor;

    final int offFocusLines = 1;
    final double offFocusSearchTextSize = 24.0;
    final Color offFocusSuffixIconColor = Colors.grey;

    if (hasfocus) {
      setState(() {
        maxLines = onFocusMaxLines;
        searchTextSize = onFocusSearchTextSize;
        suffixIconColor = onFocusSuffixIconColor;
      });
    } else {
      setState(() {
        maxLines = offFocusLines;
        searchTextSize = offFocusSearchTextSize;
        suffixIconColor = offFocusSuffixIconColor;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    InputDecoration searchInputDecoration = InputDecoration(
      //
      border: OutlineInputBorder(
        borderRadius: defaultBorderRadius,
      ),

      //
      contentPadding: EdgeInsets.fromLTRB(16, 0, 16, 0),

      suffix: IconButton(
        icon: Icon(Icons.search, color: suffixIconColor),
        onPressed: () {},
      ),
    );

    return Container(

      //
      child: Material(
        // elevation: defaultElevation,
        borderRadius: defaultBorderRadius,

        //
        child: FocusScope(
          onFocusChange: (bool hasfocus) => onFocusChanged(hasfocus),
          child: TextField(
            // adds padding, border radius, outline
            decoration: searchInputDecoration,

            // when in focus, the text would be larger
            style: TextStyle(fontSize: searchTextSize),

            // I use the variable because this property will change overtime
            // when in focus it would display more than one line of text
            // otherwise just display one line
            keyboardType: TextInputType.text,
            minLines: 1,
            maxLines: maxLines,

            // for now, just use it to set the text
            controller: controller,

            // to provide suggestions
            enableSuggestions: true,
          ),
        ),
      ),
    );
  }
}
