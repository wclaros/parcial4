import 'package:flutter/material.dart';
import 'package:parcial4_2503782019/services/firebase.dart';

class UpdateClientVehiculo extends StatefulWidget {
  const UpdateClientVehiculo({super.key});

  @override
  State<UpdateClientVehiculo> createState() => _UpdateClientVehiculoState();
}

class _UpdateClientVehiculoState extends State<UpdateClientVehiculo> {
  TextEditingController clientVehiculoController = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    final Map argumento = ModalRoute.of(context)!.settings.arguments as Map;
    //pendiente el pushname y envio de info al update
    
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update cliente vehiculo"),
      ),
      body: Padding(
        padding:const EdgeInsets.all(25.0),
        child: Column(
          children: [
           const Center(
              child: const Text(
                'pagina modificar cliente vehiculo',
                style: TextStyle(fontSize: 24),
              ),
            ),
            TextField(
              controller: clientVehiculoController,
              decoration: const InputDecoration(hintText: 'Ingrese la modificacion'),
            ),
            ElevatedButton(
                onPressed: () async {
                  //print(usuariosController.text);
                  await modificarClientVehiculo(clientVehiculoController.text).then((_) {
                    Navigator.pop(context);
                  });
                  //   Navigator.pop(context);
                },
                child:const Text("Actualizar"))
          ],
        ),
      ),
    );
  }
}
