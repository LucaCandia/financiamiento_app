import 'package:flutter/material.dart';


class mainScreen extends StatefulWidget {
  const mainScreen({super.key});

  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {

  final cantidadDinero = TextEditingController();
  final cuotas = TextEditingController();


  String dineroTotal = "";
  String cuotasTotal = "";
  
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column( 
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("FINANCIAMIENTO",
            style: TextStyle(fontSize: 16,)),
          ),
      

        SizedBox(height: 12,),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(child: TextField(
            controller: cantidadDinero,
            decoration: InputDecoration(hintText: "cantidad de dinero en un solo pago "),)),

            
          ),
      

        SizedBox(height: 12,),
      
Padding(
            padding: const EdgeInsets.only(right: 750),
            child: Card(child: Container(width: 200 ,
              child: TextField(
              controller: cuotas,
              decoration: InputDecoration(hintText: "cantidad de cuotas "),),
            )),

            
          ),
      

 IconButton(iconSize: 300,onPressed: (){

   cuotasTotal = cuotas.text;
   dineroTotal = cantidadDinero.text;


   print(("$dineroTotal, $cuotasTotal"),

   
   );

 },icon: Icon(Icons.calculate))

        ],
      ),
    );
  }
}