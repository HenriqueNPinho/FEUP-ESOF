import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image/image.dart';
import 'package:uni/view/Pages/general_page_view.dart';
import 'package:uni/view/Widgets/terms_and_conditions.dart';

class TicketPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TicketPageViewState();
}

/// Manages the 'about' section of the app.
class TicketPageViewState extends GeneralPageViewState {
  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    return Container(
        child: Text('teste'),
      );
    
  }}