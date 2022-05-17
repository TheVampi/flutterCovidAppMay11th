import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Align(
          child: Text(
            'Medidas para el regreso a clases',
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 600.0,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
                      child: Row(
                        children: const [
                          Image(
                            image: AssetImage('assets/images/cubrebocas.png'),
                            width: 100,
                          ),
                           SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                                'Se debe de utilizar cubrebocas obligatoriamente en espacios cerrados como salones'),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
                      child: Row(
                        children: const [
                          Image(
                            image: AssetImage('assets/images/casa.png'),
                            width: 100,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Expanded(
                            child: Text(
                                'Si tienes algun sintoma de COVID-19 es mejor que permanezcas en tu casa'),
                          )
                        ],
                      ),
                    ),
                    _regresaContenedor('assets/images/gel_antibacterial.png', 'Utilizar frecuentemente el gel antibacterial'),
                    _regresaContenedor('assets/images/sana_istancia.png', 'Mantener la sana distancia de 1.5m entre compañeros y personal docente'),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 30.0, bottom: 10.0),
                child: ElevatedButton(
                  onPressed: (){
                    SystemNavigator.pop();
                  },
                  child: const Text('CERRAR'),
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 241, 7, 171),
                    fixedSize: const Size(350, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    )
                  ),
                )
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _regresaContenedor(String rutaIMG, String textoMedida) {
    return Container(
      margin: const EdgeInsets.fromLTRB(7.0, 5.0, 7.0, 5.0),
      child: Row(
        children: [
          Image(
            image: AssetImage(rutaIMG),
            width: 100,
          ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Text(textoMedida),
        )
        ],
      ),
    );
  }
}
