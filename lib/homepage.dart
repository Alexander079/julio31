import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _formkey = GlobalKey<FormState>();
  final _txtnumero1 = TextEditingController();
  final _txtnumero2 = TextEditingController();
  final _txtresultado = TextEditingController();

  void calcular(String operacion) {
    double numero1 = double.parse(_txtnumero1.text);
    double numero2 = double.parse(_txtnumero2.text);

    double resultado = operacion == '+'
        ? numero1 + numero2
        : operacion == '-'
        ? numero1 - numero2
        : operacion == '*'
        ? numero1 * numero2
        : operacion == '/'
        ? numero1 / numero2
        : 0;

    _txtresultado.text = resultado.toString();
  }

  void suma() {
    double numero1 = double.parse(_txtnumero1.text);
    double numero2 = double.parse(_txtnumero2.text);
    double resultado = numero1 + numero2;
    _txtresultado.text = resultado.toString();
  }

  void resta() {
    double numero1 = double.parse(_txtnumero1.text);
    double numero2 = double.parse(_txtnumero2.text);
    double resultado = numero1 - numero2;
    _txtresultado.text = resultado.toString();
  }

  void multiplicacion() {
    double numero1 = double.parse(_txtnumero1.text);
    double numero2 = double.parse(_txtnumero2.text);
    double resultado = numero1 * numero2;
    _txtresultado.text = resultado.toString();
  }

  void division() {
    double numero1 = double.parse(_txtnumero1.text);
    double numero2 = double.parse(_txtnumero2.text);
    double resultado = numero1 / numero2;
    _txtresultado.text = resultado.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "calculadora",
          style: TextStyle(
            fontSize: 30,
            backgroundColor: CupertinoColors.secondarySystemFill,
          ),
        ),
      ),
      body: Form(
        key: _formkey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _txtnumero1,
                decoration: InputDecoration(
                  hintText: "ingrese numero 1",
                  labelText: "numero 1",
                  border: OutlineInputBorder(),
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _txtnumero2,
                decoration: InputDecoration(
                  hintText: "ingrese numero 2",
                  labelText: "numero 2",
                  border: OutlineInputBorder(),
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _txtresultado,
                decoration: InputDecoration(
                  hintText: "resultado",
                  labelText: "resultado",
                  border: OutlineInputBorder(),
                ),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      suma();
                    },
                    child: Text("+"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      resta();
                    },
                    child: Text("-"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      multiplicacion();
                    },
                    child: Text("*"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    onPressed: () {
                      division();
                    },
                    child: Text("/"),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    _txtnumero1.clear();
                    _txtnumero2.clear();
                    _txtresultado.clear();
                  },
                  child: Text("cls"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
