import 'package:flutter/material.dart';
import 'package:receitas/screens/receita/receita.dart';

class ReceitaHome extends StatelessWidget {
  final String nomeReceita, caminhoImagem, usuarioReceita;

  const ReceitaHome({
    Key key,
    @required this.nomeReceita,
    @required this.caminhoImagem,
    @required this.usuarioReceita,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () => Navigator.of(context).push(PageRouteBuilder(
          pageBuilder: (context, animation, _) {
            return Receita(
              nomeReceita: this.nomeReceita,
              caminhoImagem: this.caminhoImagem,
            );
          },
          opaque: false,
        )),
        child: Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black45,
                blurRadius: 4.0,
              ),
            ],
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: [
              Positioned(
                right: 2.0,
                child: Opacity(
                  opacity: 0.95,
                  child: Image.asset(
                    this.caminhoImagem,
                    width: 140,
                    height: 140,
                  ),
                ),
              ),
              ListTile(
                minVerticalPadding: 16.0,
                title: Text(
                  this.nomeReceita,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Container(
                  padding: EdgeInsets.only(right: 140.0),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Receita do usuário: " + this.usuarioReceita,
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ),
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