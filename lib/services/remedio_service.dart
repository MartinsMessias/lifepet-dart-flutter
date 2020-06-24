import 'package:lifepetapp/models/remedio_model.dart';
import 'package:lifepetapp/services/pet_service.dart';

class RemedioService{
  final List<Remedio> _remedioList = [];
  final PetService  petService = PetService();

  static final RemedioService _singleton = RemedioService._internal();

  factory RemedioService(){
    return _singleton;
  }

  RemedioService._internal(){
    _remedioList.add(Remedio(
      nome: "Remedio X",
      data: "10/10/2020",
      id: "123",
      pet: petService.getPet("1")
    ));
    _remedioList.add(Remedio(
      nome: "Remedio D",
      data: "10/10/2020",
      id: "124",
      pet: petService.getPet("2")
    ));
  }

  List getRemediosPet(String id){
    return _remedioList.where((remedio){
      return remedio.pet.id == id;
    }).toList();
  }

}