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
  }
}