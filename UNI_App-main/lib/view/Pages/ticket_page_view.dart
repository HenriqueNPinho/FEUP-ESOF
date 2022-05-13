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
    return ListView(
      children: <Widget>[
        Container(
            //color: Colors.blueGrey,
            margin: const EdgeInsets.all(15),
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                    child: Text('Senha'),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(90, 10, 0, 10),
                    child: Text('Em espera'),
                  ),
                  ],
                ),
                makeBoxCard('A', '025', '02'),
                makeBoxCard('B', '025', '05'),
                makeBoxCard('C', '025', '25'),
            ],
            )

        )
      ]
    );
  }
}

Widget makeBoxCard(String letra, String numero, String quantidade){
  return Container(
                  margin: EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[100],
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7),
                        blurRadius: 7,
                        offset: Offset(0,3),
                        
                      )
                    ]
                  ),
                  child: Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  Container(
                    child: Text(letra),
                    padding: EdgeInsets.fromLTRB(30, 10, 10, 10),
                  ),
                  Container(
                    width: 1,
                    height: 20,
                    color: Colors.black,
                    //padding: EdgeInsets.only(left: 5, right: 20, top: 10, bottom: 10),
                  ),
                  Container(
                    child: Text(numero),
                    padding: EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
                  ),
                  Container(
                    child: Text(quantidade),
                    padding: EdgeInsets.fromLTRB(140, 10, 0, 10),
                  ),
                  ],
                )
  );
  
}