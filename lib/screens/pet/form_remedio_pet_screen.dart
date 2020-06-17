import 'package:flutter/material.dart';

class FormRemedioPetScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro de remédio'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(labelText: 'Nome do remédio'),
                ),
                TextFormField(
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
                      onPressed: (){},
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
}
