import 'package:flutter/material.dart';

class Newfish extends StatefulWidget {
  const Newfish({super.key});

  @override
  State<Newfish> createState() => _NewfishState();
}

class _NewfishState extends State<Newfish> {

  final _formKey = GlobalKey<FormState>();
  String _species = '';
  String _habitat = '';
  String _variant = '';

  @override
  Widget build(BuildContext context) {

    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[300],
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(0, 5, 0, 15),
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth / 2,
                      height: 40,
                      child:
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Species',
                            labelStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12
                            ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          //
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return 'Error please add Species';
                          }
                          return null;
                        },
                      ),
                    ),
                    Container(
                      width: screenWidth / 2.8,
                      height: 40,
                      child:
                      TextFormField(
                        decoration: InputDecoration(
                            labelText: 'Habitat',
                            labelStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 12
                            ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.teal, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),

                          //
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.deepPurple, width: 1),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value){
                          if(value == null || value.isEmpty){
                            return 'Error please add Species';
                          }
                          return null;
                        },
                      ),
                    ),
                  ],
                ),
              ),

              Container(
                width: double.infinity,
                height: 40,
                child:
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Variant',
                      labelStyle: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 12
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.teal, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),

                      //
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple, width: 1),
                        borderRadius: BorderRadius.circular(10),
                      ),
                  ),
                  validator: (value){
                    if(value == null || value.isEmpty){
                      return 'Error please add Species';
                    }
                    return null;
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 10),
                width: double.infinity,
                child:
                  FilledButton(onPressed: (){
                    if(_formKey.currentState!.validate()){
                      print('validated');
                    }
                  },
                      style:
                      FilledButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.teal,
                        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 1,
                      ),
                      child:
                      Text('Submit')
                  )
              )
            ],
          ),
        ),
      ),
    );
  }
}
