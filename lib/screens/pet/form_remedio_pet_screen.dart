import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:lifepetapp/models/remedio_model.dart';
import 'package:lifepetapp/screens/home_screen.dart';
import 'package:lifepetapp/screens/pet/remedios_pet_screen.dart';
import 'package:lifepetapp/services/pet_service.dart';
import 'package:lifepetapp/services/remedio_service.dart';

class FormRemedioPetScreen extends StatelessWidget {
  String id;
  final _nomeControler = TextEditingController();
  final _dataControler = TextEditingController();
  final PetService petService = PetService();
  final RemedioService remedioService = RemedioService();
  Pet pet;

  FormRemedioPetScreen({this.id}){
    _getPet(id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de remédio do ${pet.nome}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  controller: _nomeControler,
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(labelText: 'Nome do remédio'),
                ),
                TextFormField(
                  controller: _dataControler,
                  keyboardType: TextInputType.datetime,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(labelText: 'Dia'),
                ),
                TextFormField(
                  keyboardType: TextInputType.datetime,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(labelText: 'Horario'),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 3,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                      labelText: 'Observações',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 40,
                    child: RaisedButton(
                      splashColor: Colors.white10,
                      onPressed: (){
                        Remedio novoRemedio = Remedio(
                          nome: _nomeControler.text,
                          data: _dataControler.text,
                          pet: pet,
                        );
                        remedioService.addRemedio(novoRemedio);
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (_) => RemediosPetScreen(id: pet.id,),
                          )
                        );
                      },
                      color: Colors.redAccent,
                      child: Text('Cadastrar', style: TextStyle(
                        color: Colors.white, fontSize: 16
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  void _getPet(String id){
    pet = petService.getPet(id);
  }
}
