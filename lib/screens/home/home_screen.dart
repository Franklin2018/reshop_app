import 'package:flutter/material.dart';
import 'package:reshop_app/constants.dart';
import 'package:alan_voice/alan_voice.dart';
import 'package:reshop_app/models/product.dart';
import 'package:reshop_app/screens/details/details_screen.dart';
import 'package:reshop_app/screens/home/components/item_card.dart';
import 'package:reshop_app/screens/itemBusqueda.dart';

import 'components/body.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  String status='true';

  @override
  void initState() {
    super.initState();
    AlanVoice.addButton(
        "35404b269f1720b96b9ca4f70d4f6b8c2e956eca572e1d8b807a3e2338fdd0dc/stage",
        buttonAlign: AlanVoice.BUTTON_ALIGN_RIGHT);

         AlanVoice.callbacks.add((command) => _handleCommand(command.data));
  }


  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: buidAppBar(context),
      body: status == 'true'? Body():ItemBusqueda(),
    );
  }

  AppBar buidAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: kTextColor),
          onPressed: (){
              Navigator.pop(context);
          },
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.search,  color: kTextColor,),
          onPressed: () {
          
          },
        ),
        IconButton(
          icon: Icon(Icons.shopping_cart_outlined,  color: kTextColor,),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2,)
      ], 
    );
  }

 

    //METHODS
  void _handleCommand(Map<String, dynamic> command) {
    switch (command["command"]) {
      case "navigation":
        setState(() {
          this.status = "false";
        });
        break;
      case "close":
      setState(() {
        
        this.status = "true";
      });

        break;
     
      
      default:
        print("Comando desconocido ${command}");
    }
  }
  
}

