import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lifepetapp/models/pet_model.dart';
import 'package:lifepetapp/screens/pet/perfil_pet_screen.dart';
import 'package:lifepetapp/screens/pet/remedios_pet_screen.dart';

class CustomNavbar extends StatefulWidget {
  int paginaAberta;
  final Pet pet;

  CustomNavbar({this.pet, this.paginaAberta});

  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      child: Container(
        height: 60,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      widget.paginaAberta = 0;
                    });
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (_) => PerfilPetScreen(id: widget.pet.id),
                      )
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.pets,
                        color: widget.paginaAberta == 0 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        'Perfil',
                        style: TextStyle(
                          color: widget.paginaAberta == 0 ? Colors.redAccent : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      widget.paginaAberta = 1;
                    });
                    Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (_) => RemediosPetScreen(id: widget.pet.id),
                        )
                    );
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.healing,
                        color: widget.paginaAberta == 1 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        'Remédios',
                        style: TextStyle(
                            color: widget.paginaAberta == 1 ? Colors.redAccent : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      widget.paginaAberta = 3;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_hospital,
                        color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        'Consultas',
                        style: TextStyle(
                          color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                MaterialButton(
                  minWidth: 40,
                  onPressed: (){
                    setState(() {
                      widget.paginaAberta = 4;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.event_note,
                        color: widget.paginaAberta == 4 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        'Notas',
                        style: TextStyle(
                            color: widget.paginaAberta == 4 ? Colors.redAccent : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
