import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:lifepetapp/screens/form_pet_screen.dart';
import 'package:lifepetapp/services/pet_service.dart';
import 'package:lifepetapp/widgets/custom_navbar.dart';
import 'package:google_fonts/google_fonts.dart';

class PerfilPetScreen extends StatelessWidget {
  final String id;
  PetService service = PetService();
  Pet pet;
  PerfilPetScreen({this.id}) {
    _getPet(id);
  }

  Widget _cartaoInfoPet(String label, String informacao) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 100,
      decoration: BoxDecoration(
          color: Colors.red[50], borderRadius: BorderRadius.circular(20)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            label,
            style: TextStyle(
                fontFamily: "Montserrat",
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.red),
          ),
          SizedBox(
            height: 8,
          ),
          Text(informacao,
              style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ))),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Hero(
                    tag: pet.id,
                    child: Container(
                      width: double.infinity,
                      height: 350,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(pet.imageUrl),
                              fit: BoxFit.cover)),
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
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(pet.nome,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                                fontSize: 24, fontWeight: FontWeight.bold)))
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(pet.descricao,
                        style: GoogleFonts.montserrat(
                            textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.grey,
                        )))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 120,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _cartaoInfoPet("Idade", pet.idade.toString()),
                    _cartaoInfoPet("Sexo", pet.sexo.toString()),
                    _cartaoInfoPet("Cor", pet.cor.toString()),
                    _cartaoInfoPet("ID", pet.id.toString()),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
                child: Text(
                  pet.bio,
                  style: GoogleFonts.montserrat(
                      textStyle: TextStyle(
                    fontSize: 16,
                    height: 1.5,
                  )),
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: CustomNavbar(
          pet: pet,
          paginaAberta: 0,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (_) => FormPetScreen(id: pet.id),
            ));
          },
          backgroundColor: Colors.redAccent,
          child: Icon(
            Icons.edit,
          ),
        ),
      ),
    );
  }

  void _getPet(String id) {
    pet = service.getPet(id);
  }
}
