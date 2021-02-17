import 'package:flutter/material.dart';

class Categoria extends StatelessWidget {
  final Color cor;
  final String categoria, caminhoImagem;
  final int numeroDeReceitas;

  const Categoria({
    Key key,
    @required this.cor,
    @required this.categoria,
    @required this.caminhoImagem,
    @required this.numeroDeReceitas,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 8.0,
        right: 8.0,
      ),
      child: InkWell(
        onTap: () => {},
        child: Container(
          width: 176,
          decoration: BoxDecoration(
            color: this.cor.withOpacity(0.95),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: 112.0,
                right: 8.0,
                child: Image.asset(
                  this.caminhoImagem,
                  height: 120,
                ),
              ),
              ListTile(
                minVerticalPadding: 36.0,
                title: Text(
                  this.categoria,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                subtitle: Text(
                  "${this.numeroDeReceitas} Receitas Disponíveis",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}