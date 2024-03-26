// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/artical.dart';
import 'package:flutter_application_1/service/database.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:random_string/random_string.dart';

class Liste extends StatefulWidget {
  const Liste({super.key});

  @override
  State<Liste> createState() => _ListeState();
}

class _ListeState extends State<Liste> {
  TextEditingController nameconroller = TextEditingController();
  TextEditingController idconroller = TextEditingController();
  TextEditingController localconroller = TextEditingController();
  TextEditingController refconroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold( 
          floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Artical()),
            );
          },
          child: Icon(Icons.article),
          backgroundColor: Colors.red[99],
        ),
        
        body: Container(
            margin: EdgeInsets.only(left: 20, top: 30),
            child: SingleChildScrollView(
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextField(
                      controller: nameconroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Id',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextField(
                      controller: idconroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Location',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextField(
                      controller: localconroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text('Reference',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(9)),
                    child: TextField(
                      controller: localconroller,
                      decoration: InputDecoration(border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                        onPressed: () async {
                          String id = randomAlphaNumeric(50);
                          Map<String, dynamic> elementInfoMap = {
                            'Name': nameconroller.text,
                            'Id': idconroller.text,
                            'id': id,
                            'Location': localconroller.text,
                            'Reference': refconroller.text,
                          };
                          await DatabaseMethods()
                              .addElementDetails(elementInfoMap, id)
                              .then((value) {
                            Fluttertoast.showToast(
                                msg: "Element Details has bean uploaded successfully",
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 16.0);
                          });
                        },
                        
                        child: Text(
                          'Add to Liste',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        )),
                  )
                ],
              ),
            )),
      ),
    );
  }
}
