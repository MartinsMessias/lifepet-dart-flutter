import 'dart:math';

import 'package:lifepetapp/models/pet_model.dart';

class PetService {
  final List<Pet> _petList = [];
  static final PetService _singleton = PetService._internal();

  factory PetService() {
    return _singleton;
  }

  PetService._internal() {
    _petList.add(Pet(
        nome: "Dogenilson",
        imageUrl: "assets/dog1.jpg",
        descricao: "Um dog",
        idade: 2,
        sexo: "Macho",
        cor: "Marrom",
        bio: "Manso",
        id: "1"));
    _petList.add(
      Pet(
          nome: "Catioro",
          imageUrl: "assets/dog2.jpg",
          descricao: "Outro dog",
          idade: 1,
          sexo: "Macho",
          cor: "Marrom",
          bio: "Brabo",
          id: "2"),
    );
  }

  List getAllPets() {
    return _petList;
  }

  Pet getPet(String id) {
    return _petList.singleWhere((pet) {
      return pet.id == id;
    });
  }


  void addPet(Pet pet) {
    _petList.add(Pet(
        nome: pet.nome,
        bio: pet.bio,
        idade: pet.idade,
        sexo: pet.sexo,
        descricao: pet.descricao,
        cor: pet.cor,
        id: Random().nextInt(100).toString(),
        imageUrl: 'assets/dog2.jpg'));
  }
  void editPet(String id, newPet){
    Pet petEditar = getPet(id);
    petEditar.nome = newPet.nome;
    petEditar.bio = newPet.bio;
    petEditar.idade = newPet.idade;
    petEditar.sexo = newPet.sexo;
    petEditar.cor = newPet.cor;
    petEditar.descricao = newPet.descricao;
  }
}
