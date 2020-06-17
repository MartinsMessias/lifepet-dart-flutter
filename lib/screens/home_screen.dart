import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:lifepetapp/screens/form_pet_screen.dart';
import 'package:lifepetapp/screens/pet/perfil_pet_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
//      appBar: AppBar(
//        backgroundColor: Colors.redAccent,
//        title:Text('Pet Life'),
//        centerTitle: true,
//      ),
        backgroundColor: Colors.white,
        body: Container(
          color: Colors.white,
          // margin: EdgeInsets.only(top: 25),
          child: ListView.builder(
            itemCount: pets.length,
            itemBuilder: (context, index) {
              return _petCard(context, index);
            },
            padding: EdgeInsets.all(2),
          ),
        ),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => FormPetScreen(),
              ),
            );
          },
          tooltip: 'Cadastrar um dog',
          label: Text('Cadastrar'),
          icon: Icon(Icons.pets),
          backgroundColor: Colors.redAccent,
        ),
      ),
    );
  }

  Widget _petCard(BuildContext context, int index) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => PerfilPetScreen(pet: pets[index]),
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: pets[index].id,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    image: DecorationImage(
                        image: AssetImage(pets[index].imageUrl),
                        fit: BoxFit.cover)),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
              child: Row(
                children: <Widget>[
                  Text(
                    pets[index].nome,
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(12, 12, 40, 0),
              child: Text(pets[index].descricao,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(color: Colors.grey, fontSize: 16))),
            )
          ],
        ),
      ),
    );
  }
}
