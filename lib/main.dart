import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CambiarColor(),
    );
  }
}



class ContadorPuntos extends StatefulWidget {
  const ContadorPuntos({super.key});

  @override
  State<ContadorPuntos> createState() => _ContadorPuntosState();
}

class _ContadorPuntosState extends State<ContadorPuntos> {
  int puntos = 0;

  void sumarPuntos() {
    setState(() {
      puntos++;
    });
  }

  void restarPuntos() {
    setState(() {
      puntos--;
    });
  }

  void reiniciarPuntos() {
    setState(() {
      puntos = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contador de Puntos"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Puntaje actual: $puntos",
              style: const TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: sumarPuntos,
              child: const Text("Sumar puntos"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: restarPuntos,
              child: const Text("Restar puntos"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: reiniciarPuntos,
              child: const Text("Reiniciar"),
            ),
          ],
        ),
      ),
    );
  }
}



class MensajesMotivacionales extends StatefulWidget {
  const MensajesMotivacionales({super.key});

  @override
  State<MensajesMotivacionales> createState() =>
      _MensajesMotivacionalesState();
}

class _MensajesMotivacionalesState
    extends State<MensajesMotivacionales> {

  List<String> mensajes = [
    "Sigue practicando",
    "Vas muy bien",
    "No te rindas",
    "Cada error también enseña"
  ];

  int indice = 0;

  void cambiarMensaje() {
    setState(() {
      indice++;

      if (indice >= mensajes.length) {
        indice = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Mensajes Motivacionales"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text(
              mensajes[indice],
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: cambiarMensaje,
              child: const Text("Cambiar mensaje"),
            ),
          ],
        ),
      ),
    );
  }
}



class CambiarColor extends StatefulWidget {
  const CambiarColor({super.key});

  @override
  State<CambiarColor> createState() => _CambiarColorState();
}

class _CambiarColorState extends State<CambiarColor> {

  Color colorTarjeta = Colors.blue;

  void cambiarAzul() {
    setState(() {
      colorTarjeta = Colors.blue;
    });
  }

  void cambiarVerde() {
    setState(() {
      colorTarjeta = Colors.green;
    });
  }

  void cambiarRojo() {
    setState(() {
      colorTarjeta = Colors.red;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cambiar Color"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              elevation: 10,
              child: Container(
                width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: colorTarjeta,
                borderRadius: BorderRadius.circular(10),
              ),
              )
            ),
            
            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: cambiarAzul,
              child: const Text("Azul"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: cambiarVerde,
              child: const Text("Verde"),
            ),

            const SizedBox(height: 10),

            ElevatedButton(
              onPressed: cambiarRojo,
              child: const Text("Rojo"),
            ),
          ],
        ),
      ),
    );
  }
}



class MostrarOcultarFlutter extends StatefulWidget {
  const MostrarOcultarFlutter({super.key});

  @override
  State<MostrarOcultarFlutter> createState() =>
      _MostrarOcultarFlutterState();
}

class _MostrarOcultarFlutterState
    extends State<MostrarOcultarFlutter> {

  bool mostrar = false;

  void cambiarEstado() {
    setState(() {
      mostrar = !mostrar;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Información de Flutter"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            const Text(
              "Flutter",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            if (mostrar)
              const Padding(
                padding: EdgeInsets.all(12),
                child: Text(
                  "Flutter es un framework de Google "
                  "que permite crear aplicaciones "
                  "móviles multiplataforma.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 18),
                ),
              ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: cambiarEstado,
              child: Text(
                mostrar
                    ? "Ocultar información"
                    : "Mostrar información",
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class Formulario extends StatefulWidget {
  const Formulario({super.key});

  @override
  State<Formulario> createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {

  final TextEditingController nombreController =
      TextEditingController();

  final TextEditingController programaController =
      TextEditingController();

  final TextEditingController ciudadController =
      TextEditingController();

  String resultado = "";

  void mostrarDatos() {
    setState(() {
      resultado =
          "Hola, ${nombreController.text}. "
          "Estudias ${programaController.text} "
          "y vives en ${ciudadController.text}.";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Formulario"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            TextField(
              controller: nombreController,
              decoration: const InputDecoration(
                labelText: "Nombre",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: programaController,
              decoration: const InputDecoration(
                labelText: "Programa",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),

            TextField(
              controller: ciudadController,
              decoration: const InputDecoration(
                labelText: "Ciudad",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: mostrarDatos,
              child: const Text("Mostrar información"),
            ),

            const SizedBox(height: 20),

            Text(
              resultado,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}



class ConfirmarAsistencia extends StatefulWidget {
  const ConfirmarAsistencia({super.key});

  @override
  State<ConfirmarAsistencia> createState() =>
      _ConfirmarAsistenciaState();
}

class _ConfirmarAsistenciaState
    extends State<ConfirmarAsistencia> {

  bool asistencia = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asistencia"),
      ),
      body: Column(
        children: [

          CheckboxListTile(
            title: const Text("Confirmar asistencia"),
            value: asistencia,
            onChanged: (value) {
              setState(() {
                asistencia = value!;
              });
            },
          ),

          const SizedBox(height: 20),

          Text(
            asistencia
                ? "Asistencia confirmada"
                : "Asistencia pendiente",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}