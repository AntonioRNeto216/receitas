import 'package:flutter/material.dart';

class DrawerHome extends StatelessWidget {
  final Function closeDrawer;

  const DrawerHome({Key key, this.closeDrawer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      color: Colors.white,
      width: size.width * 0.60,
      height: size.height,
      padding: EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          SizedBox(
            height: 16.0,
          ),
          CaixaDrawer(
            onTap: () => {},
            icone: Icons.person_outline,
            titulo: "Perfil",
            subtitulo: "Vizualize seu perfil",
          ),
          SizedBox(height: 16.0),
          CaixaDrawer(
            onTap: () => {},
            icone: Icons.add,
            titulo: "Adicionar receita",
            subtitulo: "Adicione sua receita no app",
          ),
          SizedBox(height: 16.0),
          CaixaDrawer(
            onTap: () => {},
            icone: Icons.logout,
            titulo: "Logout",
            subtitulo: "Sair da sua conta",
          ),
        ],
      ),
    );
  }
}

class CaixaDrawer extends StatelessWidget {
  final Function onTap;
  final IconData icone;
  final String titulo, subtitulo;

  const CaixaDrawer({
    Key key,
    @required this.onTap,
    @required this.icone,
    @required this.titulo,
    @required this.subtitulo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: size.height > 700 ? 72 : 80,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 2.0,
          ),
        ],
      ),
      child: ListTile(
        onTap: this.onTap,
        leading: Icon(
          this.icone,
          color: Colors.black,
        ),
        title: Text(
          this.titulo,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(
          this.subtitulo,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12.0,
          ),
        ),
      ),
    );
  }
}
