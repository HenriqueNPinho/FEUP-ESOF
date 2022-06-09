import 'package:flutter/material.dart';
import 'package:uni/view/Pages/general_page_view.dart';
import 'package:uni/view/Pages/ticket_page_view.dart';

class TicketCancelPageView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => TicketCancelViewState();
}

/// Manages the 'about' section of the app
class TicketCancelViewState extends GeneralPageViewState {
  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
          Container(
            child: Center(
              child: Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        '${getArea()[1]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '${getArea()[0]}',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 80),
                      ),
                      Text('${getTicket()}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 40)),
                    ]),
              ),
            ),
            margin: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[100],
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.7),
                    blurRadius: 7,
                    offset: Offset(0, 3),
                  )
                ]),
          ),
          makeBoxInf(),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 40),
              child: ElevatedButton(
                  key: const Key('CancelarButton'), //TEST
                  child: Text(
                    'Cancelar Senha',
                    style: TextStyle(fontSize: 20),
                  ),
                  style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all(Size(220, 80)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ))),
                  onPressed: () => cancelPopUp(context))),
        ])));
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
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TicketPageView()))),
                  ),
                  Container(
                    child: ElevatedButton(
                        child: Text('Não', style: TextStyle(fontSize: 15)),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(120, 40)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ))),
                        onPressed: () => Navigator.pop(context)),
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
