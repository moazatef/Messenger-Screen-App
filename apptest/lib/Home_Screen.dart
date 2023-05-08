// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
class HomeScreen extends StatelessWidget
{
 @override
  Widget build(BuildContext context)
 {
  return Scaffold(
                     appBar: AppBar(
                         leading :  Icon(
                                          Icons.menu,
                  ),
                            title: Text(
                                           'Better Call Saul🥰'
                                         ),
                             actions: [
                                           IconButton(onPressed: notifaction, icon: Icon(
                                            Icons.notifications,
                                         ),
                                         ),
                                           IconButton(onPressed: search, icon:  Icon(
                                            Icons.search,
                                           ),
                                          ),

                                      ],

               centerTitle: true,
               elevation: 10.0,
                backgroundColor:Colors.deepPurple ,

                ) ,
                    body: Column(
                        children:  [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Image(
                                    image: NetworkImage(
                                      'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/3454/34548992_sa.jpg;maxHeight=640;maxWidth=550',
                                    ),
                                    width: 300.0,
                                    height: 300.0,
                                    fit: BoxFit.cover,


                                  ),
                                  Container(
                                    color: Colors.black.withOpacity(0.6),
                                    width: 300.0,
                                    padding: EdgeInsets.symmetric(
                                      vertical: 10.0,
                                    ),
                                    child: Text('Better Call Saul Series',
                                          textAlign: TextAlign.center,
                                          style:TextStyle(
                                            fontSize: 30.0,
                                            color:Colors.white ,
                                          ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],                      
                      ),
            );
  }

// Function to check if notification button clicked
  void notifaction()
  {
    print('the notification button clicked')  ;
  }
  //Function to check if search button clicked
  void search()
  {
    print('the search button clicked')  ;
  }
}