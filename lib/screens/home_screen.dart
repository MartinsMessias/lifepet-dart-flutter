import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(5),
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: EdgeInsets.only(bottom: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag: pets[0].id,
                      child: Container(
                        width: double.infinity,
                        height: 250,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            image: DecorationImage(
                                image: AssetImage(pets[0].imageUrl),
                                fit: BoxFit.cover)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
                      child: Row(
                        children: <Widget>[
                          Text(
                            pets[0].nome,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold,
                                fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
                      child: Text(
                        pets[0].descricao,
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.grey,
                            fontSize: 16),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
