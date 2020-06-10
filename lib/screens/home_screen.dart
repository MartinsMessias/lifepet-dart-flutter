import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:lifepetapp/screens/form_pet_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.builder(
          itemCount: pets.length,
          itemBuilder: (context, index){
            return _petCard(context, index);
          },
          padding: EdgeInsets.all(5),

        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          onPressed: (){
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
    );
  }

  Widget _petCard(BuildContext context, int index){
    return GestureDetector(
      onTap: () {},
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
                pets[index].descricao,
                style: TextStyle(
                    fontFamily: 'Montserrat',
                    color: Colors.grey,
                    fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
