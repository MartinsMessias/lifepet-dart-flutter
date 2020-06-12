import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomNavbar extends StatefulWidget {
  int paginaAberta = 0;

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
                      widget.paginaAberta = 2;
                    });
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.local_hospital,
                        color: widget.paginaAberta == 2 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        'Consulta',
                        style: TextStyle(
                            color: widget.paginaAberta == 2? Colors.redAccent : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
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
                        Icons.event_note,
                        color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey,
                      ),
                      Text(
                        'Anotações',
                        style: TextStyle(
                            color: widget.paginaAberta == 3 ? Colors.redAccent : Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
