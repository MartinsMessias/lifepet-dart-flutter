import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lifepetapp/screens/pet/form_remedio_pet_screen.dart';
import 'package:lifepetapp/widgets/custom_navbar.dart';

class RemediosPetScreen extends StatelessWidget {
  final Pet pet;

  RemediosPetScreen({this.pet});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: <
            Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: pet.id,
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(pet.imageUrl), fit: BoxFit.cover)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3, left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.white),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.redAccent,
                  ),
                ),
              ),
            ],
          ),
//              SizedBox(
//                height: 20,
//              ),
          Container(
            color: Colors.redAccent,
            height: 50,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Remédios do ${pet.nome}',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Scrollbar(
              child: ListView(
                children: <Widget>[
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.0, color: Colors.redAccent))),
                          child: Icon(Icons.healing, color: Colors.redAccent),
                        ),
                        title: Text(
                          pet.nome,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(pet.descricao),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.0, color: Colors.redAccent))),
                          child: Icon(Icons.healing, color: Colors.redAccent),
                        ),
                        title: Text(
                          pet.nome,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(pet.descricao),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.0, color: Colors.redAccent))),
                          child: Icon(Icons.healing, color: Colors.redAccent),
                        ),
                        title: Text(
                          pet.nome,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(pet.descricao),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.0, color: Colors.redAccent))),
                          child: Icon(Icons.healing, color: Colors.redAccent),
                        ),
                        title: Text(
                          pet.nome,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(pet.descricao),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.0, color: Colors.redAccent))),
                          child: Icon(Icons.healing, color: Colors.redAccent),
                        ),
                        title: Text(
                          pet.nome,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(pet.descricao),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.0, color: Colors.redAccent))),
                          child: Icon(Icons.healing, color: Colors.redAccent),
                        ),
                        title: Text(
                          pet.nome,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(pet.descricao),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 8,
                    margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                    child: Container(
                      child: ListTile(
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: Container(
                          padding: EdgeInsets.only(right: 12),
                          decoration: BoxDecoration(
                              border: Border(
                                  right: BorderSide(
                                      width: 1.0, color: Colors.redAccent))),
                          child: Icon(Icons.healing, color: Colors.redAccent),
                        ),
                        title: Text(
                          pet.nome,
                          style: TextStyle(fontWeight: FontWeight.w600),
                        ),
                        subtitle: Text(pet.descricao),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => FormRemedioPetScreen(pet: pet),
              ),
            );
          },
          backgroundColor: Colors.redAccent,
          child: Icon(Icons.add),
      ),
          bottomNavigationBar: CustomNavbar(pet: pet, paginaAberta: 1,),
      ),
    );
  }
}
