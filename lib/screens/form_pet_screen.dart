import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:lifepetapp/screens/home_screen.dart';
import 'package:lifepetapp/screens/pet/form_remedio_pet_screen.dart';
import 'package:lifepetapp/services/pet_service.dart';

class FormPetScreen extends StatefulWidget {
  @override
  _FormPetScreenState createState() => _FormPetScreenState();
}

class _FormPetScreenState extends State<FormPetScreen> {
  @override

  String corPet = "Branco";
  String sexoPet = "Macho";

  final _nomeController = TextEditingController();
  final _bioController = TextEditingController();
  final _idadeController = TextEditingController();
  final _descricaoController = TextEditingController();

  PetService service = PetService();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de pet'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Nome do pet"),
                  controller: _nomeController,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Bio"),
                  controller: _bioController,
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(labelText: "Idade"),
                  controller: _idadeController,
                ),
                DropdownButtonFormField(
                  value: sexoPet,
                  onChanged: (String value) {
                    setState(() {
                      sexoPet = value;
                    });
                  },
                  items: <String>['Macho', 'Fêmea']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(labelText: "Descrição"),
                  controller: _descricaoController,
                ),
                DropdownButtonFormField(
                  value: corPet,
                  onChanged: (String value) {
                    setState(() {
                      corPet = value;
                    });
                  },
                  items: <String>['Branco', 'Preto', 'Marrom', 'Amarelo']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                        value: value, child: Text(value));
                  }).toList(),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    child: RaisedButton(
                      onPressed: () {
                        Pet newPet = Pet(
                          nome: _nomeController.text,
                          bio: _bioController.text,
                          idade: int.parse(_idadeController.text),
                          sexo: sexoPet,
                          descricao: _descricaoController.text,
                          cor: corPet
                        );
                        service.addPet(newPet);
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => HomeScreen(),
                          )
                        );
                      },
                      color: Colors.redAccent,
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
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
}
