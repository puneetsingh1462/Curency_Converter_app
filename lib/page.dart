import 'package:flutter/material.dart';



class example extends StatefulWidget{
  const example({super.key}); 
  
  @override
 State<example> createState()=>_currencyconverterp();
 }
class _currencyconverterp extends State<example>{
  TextEditingController textEditingController = TextEditingController();
    double inputmoney =0;
  @override
  
  Widget build(BuildContext context){
    
       final border = OutlineInputBorder(
         borderSide: const BorderSide(
           width:  2.0,
           style:BorderStyle.solid,
           
         ),
         borderRadius: BorderRadius.circular(10)
         
       );
       return Scaffold(
         backgroundColor: Colors.blueGrey,
         appBar: AppBar(
          centerTitle: true,
           title: const  Text('Currency Converter'),
           
           backgroundColor: Colors.blueGrey,
         ),

           body:Column(
             
             mainAxisAlignment: MainAxisAlignment.center,
               children: [
                  Center(
                   child:Text(inputmoney.toString(),
                   style: const TextStyle(fontSize: 45,
                     fontWeight: FontWeight.bold,
                     color: Colors.white ,
                   ),
                   ),
                   

                 ),
                 Padding(
                   padding : const EdgeInsets.all(8.0),
                 child :TextField(
                  controller: textEditingController,
                   style: const TextStyle(
                     color:Colors.black

                   ),
                   decoration: InputDecoration(
                     hintText: 'Enter Amount in USD',
                     hintStyle: const TextStyle(color: Colors.black),
                     prefixIcon: const Icon(Icons.monetization_on_outlined),
                     prefixIconColor: Colors.black,
                     filled: true,
                     fillColor: Colors.white,
                     enabledBorder: border,


                   ),
                   keyboardType:const TextInputType.numberWithOptions(
                     signed: true,
                     decimal: true
                   )
                 )
                 ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ElevatedButton(onPressed: (){
                    //print(textEditingController.text);
                    setState(() {
                      inputmoney = double.parse(textEditingController.text)*81;
                      
                    });
                  
                    print(inputmoney);
                   },
                    style:  ButtonStyle(
                      backgroundColor: const MaterialStatePropertyAll(Colors.black,
                      
                      ),
                      foregroundColor: const MaterialStatePropertyAll( Colors.white),
                      minimumSize: const  MaterialStatePropertyAll(Size(double.infinity, 50)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),

                      ))                    ),
                  
                    child: const Text('Convert'),
                    
                    ),
                 )
                  ,

               ],
           )
       
       );
       
     }
  }
