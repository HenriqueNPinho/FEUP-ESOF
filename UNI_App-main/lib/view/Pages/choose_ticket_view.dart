import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:image/image.dart';
import 'package:uni/view/Pages/general_page_view.dart';
import 'package:uni/view/Pages/cancel_ticket_page.dart';
import 'package:uni/view/Pages/bus_stop_selection_page.dart';



class chooseTicketView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => chooseTicketViewState();
}

/// Manages the 'ticket' section of the app.
class chooseTicketViewState extends GeneralPageViewState {
  @override
  Widget getBody(BuildContext context) {
    final MediaQueryData queryData = MediaQuery.of(context);
    double cheight = MediaQuery.of(context).size.height;
    return ListView(
      children: <Widget>[
        
        Container(
          
          //color: Colors.blueGrey,
          margin: EdgeInsets.only(left: 15, right: 15, top: cheight/6),
          alignment: Alignment.topCenter,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                makeBoxCard('A', '025', '02', context),
                makeBoxCard('B', '025', '05', context),
                makeBoxCard('C', '025', '25', context),
            ],
            ) 
        ),

        ButtonSelecionarSenha(context, cheight),
       
      ]
    );
  }
}
Widget ButtonSelecionarSenha(BuildContext context, double cheight){
  return Container(
          margin: EdgeInsets.symmetric(horizontal: 40, vertical: cheight/6),
          child:  ElevatedButton(
            
            child: Text('Selecionar Senha', style: TextStyle(fontSize: 20)),
             style: ElevatedButton.styleFrom(
              elevation: 20,
              primary: Theme.of(context).accentColor.withOpacity(0.5),
            ),
            onPressed: () {}
            ),
        );
}

void showCustomDialog(BuildContext context) {
  showGeneralDialog(
    context: context,
    barrierLabel: "Barrier",
    barrierDismissible: true,
    barrierColor: Colors.black.withOpacity(0.5),
    transitionDuration: Duration(milliseconds: 500),
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
                      child: Text('Confirmar senha?'),
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
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    //side: BorderSide(color: Colors.red)
                                    ))),
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => TicketCancelPageView()))
                        ),
                  ),
                  Container(
                    child: ElevatedButton(
                        child: Text('Não', style: TextStyle(fontSize: 15)),
                        style: ButtonStyle(
                            minimumSize:
                                MaterialStateProperty.all(Size(120, 40)),
                            /*foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            backgroundColor:
                                MaterialStateProperty.all<Color>(Colors.red),
                            shadowColor:
                                MaterialStateProperty.all<Color>(Colors.black),*/
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    //side: BorderSide(color: Colors.red)
                                    ))
                                    ),
                        onPressed: () => null
                        ),
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


Widget makeBoxCard(String letra, String numero, String quantidade, BuildContext context){
  return Container(

    margin: EdgeInsets.symmetric(vertical: 7, horizontal: 25),
    child:  ElevatedButton(    
      child: Row(
      children: [ 
      
      Container(
        child: Text(
          letra,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        padding: EdgeInsets.fromLTRB(20, 10, 10, 10),
      ),
      
      Container(
        width: 1,
        height: 20,
        color: Colors.black,
      ),
      
      Container(
        child: Text('Explicação do serviço .....', 
          style: TextStyle(color: Colors.black)
        ),
                    padding: EdgeInsets.only(left: 10, right: 20, top: 10, bottom: 10),
                  ),
                  ]
     ),
     style: ElevatedButton.styleFrom(
        primary: Theme.of(context).primaryColor,
        side: BorderSide(width: 5, color: Theme.of(context).accentColor),
        shadowColor: Colors.black,
        elevation: 6,
        ),
        onPressed: () {
          print('clicado ' + letra);
        }
    ),
  );
  
}