import 'package:flutter/material.dart';
import 'package:uni/view/Pages/general_page_view.dart';

class TicketCancelPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TicketCancelViewState();
}

/// Manages the 'Cancel page' section of the app.
class TicketCancelViewState extends GeneralPageViewState {
  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      body: ElevatedButton(
          child: Text('Cancelar Senha', style: TextStyle(fontSize: 20)),
          style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(220, 80)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ))),
          onPressed: () => cancelPopUp(context)),
    );
  }
}

void cancelPopUp(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Cancel",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 700),
    pageBuilder: (_, __, ___) {
      return Center(
        child: Container(
            height: 200,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: DefaultTextStyle(
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                      child: Text('Cancelar senha?'),
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(30, 50, 30, 50),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: ElevatedButton(
                        child: Text('Sim', style: TextStyle(fontSize: 15)),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(120, 40)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => null),
                  ),
                  Container(
                    child: ElevatedButton(
                        child: Text('NÃ£o', style: TextStyle(fontSize: 15)),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(120, 40)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(color: Colors.red)))),
                        onPressed: () => null),
                  ),
                ]),
              ],
            )),
      );
    },
    transitionBuilder: (_, anim, __, child) {
      Tween<Offset> tween;
      if (anim.status == AnimationStatus.reverse) {
        tween = Tween(begin: Offset(-1, 0), end: Offset.zero);
      } else {
        tween = Tween(begin: Offset(1, 0), end: Offset.zero);
      }

      return SlideTransition(
        position: tween.animate(anim),
        child: FadeTransition(
          opacity: anim,
          child: child,
        ),
      );
    },
  );
}
