import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lifepetapp/models/remedio_model.dart';
import 'package:lifepetapp/screens/pet/form_remedio_pet_screen.dart';
import 'package:lifepetapp/services/pet_service.dart';
import 'package:lifepetapp/services/remedio_service.dart';
import 'package:lifepetapp/widgets/custom_navbar.dart';

class RemediosPetScreen extends StatelessWidget {
  final String id;
  List<Remedio> remedioList = List();
  final PetService petService = PetService();
  final RemedioService remedioService = RemedioService();
  Pet pet;

  RemediosPetScreen({this.id}){
    _getPet(id);
    _getRemedio(id);
  }

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
              child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: remedioList.length,
                itemBuilder: (context, index){
                  return _remedioCard(context, index);
                },
              ),
            ),
          )
        ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (_) => FormRemedioPetScreen(id: pet.id),
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

  Widget _remedioCard(BuildContext context, int index){
    return Card(
      elevation: 8,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      child: InkWell(
        onTap: (){},
        splashColor: Colors.black12,
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
              remedioList[index].nome,
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            subtitle: Text(remedioList[index].data),
          ),
        ),
      ),
    );
  }

  void _getPet(String id){
    pet = petService.getPet(id);
  }
  void _getRemedio(String id){
    remedioList = remedioService.getRemediosPet(id);
  }
}
