import 'package:flutter/material.dart';
import 'package:receitas/screens/home/components/categoria.dart';
import 'package:receitas/screens/home/components/receita.dart';

class ConteudoHome extends StatefulWidget {
  @override
  _ConteudoHomeState createState() => _ConteudoHomeState();
}

class _ConteudoHomeState extends State<ConteudoHome> {
  ScrollController controller = ScrollController();
  bool fecharListaCategorias = false;

  final List<Categoria> _listaCategorias = [
    Categoria(
      cor: Color(0x009900),
      categoria: "Sobremesa",
      numeroDeReceitas: 120,
      caminhoImagem: "assets/images/sobremesa.png",
    ),
    Categoria(
      cor: Color(0x8B4513),
      categoria: "Bolo",
      numeroDeReceitas: 57,
      caminhoImagem: "assets/images/bolo.png",
    ),
    Categoria(
      cor: Color(0xFFB266),
      categoria: "Hambuguer",
      numeroDeReceitas: 25,
      caminhoImagem: "assets/images/hamburguer.png",
    ),
    Categoria(
      cor: Color(0xFF8C00),
      categoria: "Sopa",
      numeroDeReceitas: 59,
      caminhoImagem: "assets/images/sopa.png",
    ),
    Categoria(
      cor: Color(0x994C00),
      categoria: "Churrasco",
      numeroDeReceitas: 53,
      caminhoImagem: "assets/images/churrasco.png",
    ),
    Categoria(
      cor: Colors.amberAccent, //
      categoria: "Peixes/Frutos do Mar",
      numeroDeReceitas: 33,
      caminhoImagem: "assets/images/peixe.png",
    ),
  ];

  final List<Widget> _listaReceitas = [
    Padding(
      padding: EdgeInsets.only(
        bottom: 4.0,
      ),
      child: Text(
        "Receitas Recentes",
        textAlign: TextAlign.start,
        style: TextStyle(
          color: Colors.black,
          fontSize: 22.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
    Receita(
      nomeReceita: "Camarão Empanado",
      usuarioReceita: "João da Silva Ribeiro",
      caminhoImagem: "assets/images/camarao_empanado.png",
    ),
    Receita(
      nomeReceita: "Torta de Limão",
      usuarioReceita: "Antonio Neto",
      caminhoImagem: "assets/images/torta_de_limao.png",
    ),
    Receita(
      nomeReceita: "Torta de Frango",
      usuarioReceita: "Maria do Carmo",
      caminhoImagem: "assets/images/torta_de_frango.png",
    ),
    Receita(
      nomeReceita: "Milkshake",
      usuarioReceita: "Ana Maria do Vale",
      caminhoImagem: "assets/images/milkshake.png",
    ),
    Receita(
      nomeReceita: "Hambuguer Vegano",
      usuarioReceita: "Alice Marques Rodrigues",
      caminhoImagem: "assets/images/hamburguer_vegano.png",
    ),
    Receita(
      nomeReceita: "Hamburguer Estilo McDonalds",
      usuarioReceita: "Any Rodrigues",
      caminhoImagem: "assets/images/hamburguer_estilo_mcdonalds.png",
    ),
    Receita(
      nomeReceita: "Picanha com Fritas",
      usuarioReceita: "José Alencar",
      caminhoImagem: "assets/images/picanha_com_fritas.png",
    ),
    Receita(
      nomeReceita: "Bolo de Cenoura",
      usuarioReceita: "Maria Aparecida",
      caminhoImagem: "assets/images/bolo_cenoura.png",
    ),
  ];

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      setState(() {
        this.fecharListaCategorias = this.controller.offset > 20;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          AnimatedOpacity(
            duration: const Duration(milliseconds: 300),
            opacity: this.fecharListaCategorias ? 0 : 1,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: double.infinity,
              height: this.fecharListaCategorias ? 0 : 280,
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: 280,
                padding: EdgeInsets.symmetric(vertical: 16.0),
                color: Colors.transparent,
                child: ListView.builder(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: this._listaCategorias.length,
                  itemBuilder: (context, index) {
                    return this._listaCategorias[index];
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                physics: BouncingScrollPhysics(),
                controller: this.controller,
                itemCount: this._listaReceitas.length,
                itemBuilder: (context, index) {
                  return this._listaReceitas[index];
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
