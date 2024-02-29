import 'package:flutter/material.dart';

void main() => runApp(const AppMiTabBar());

class AppMiTabBar extends StatelessWidget {
  const AppMiTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Ejemplo Tabbar Carlos Garcia",
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: MiPaginaInicial(),
    );
  }
} //fin AppMiTabBar

//statefull
class MiPaginaInicial extends StatefulWidget {
  const MiPaginaInicial({Key? key}) : super(key: key);

  @override
  State<MiPaginaInicial> createState() => _MiPaginaInicialState();
} //MiPaginaInicial

class _MiPaginaInicialState extends State<MiPaginaInicial> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Tabbar Carlos Garcia"),
            centerTitle: true,
            bottom: TabBar(tabs: [
              Tab(
                text: "Bebidas",
                icon: Icon(Icons.local_bar),
              ),
              Tab(
                text: "Platillos",
                icon: Icon(Icons.lunch_dining),
              ),
              Tab(
                text: "Sucursales",
                icon: Icon(Icons.domain),
              ),
              Tab(
                text: "Pedidos",
                icon: Icon(Icons.motorcycle),
              ),
            ] //fin de tabs
                ), //fin bottom TabBar
          ),
          body: TabBarView(children: const <Widget>[
            Center(
              child: Text(
                "Refresco",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Hamburguesa",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Sucursales",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            Center(
              child: Text(
                "Pedidos",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ] // jardin de niños
              ), //fin de tabbarview
        ) //fin de Scaffold
        ); //Fin DefaultTabController
  } // fin widget
} //_MiPaginaInicialState
