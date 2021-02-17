import 'package:flutter/material.dart';
import 'package:foldable_sidebar/foldable_sidebar.dart';
import 'package:receitas/screens/home/components/conteudo_home.dart';
import 'package:receitas/screens/home/components/drawer.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  FSBStatus _status;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: IconButton(
            icon: this._status == FSBStatus.FSB_CLOSE || this._status == null
                ? Icon(Icons.menu)
                : Icon(Icons.close),
            color: Colors.black,
            onPressed: () {
              setState(() {
                this._status = this._status == FSBStatus.FSB_OPEN
                    ? FSBStatus.FSB_CLOSE
                    : FSBStatus.FSB_OPEN;
              });
            },
          ),
          actions: [
            this._status == FSBStatus.FSB_CLOSE || this._status == null
                ? Padding(
                    padding: EdgeInsets.only(
                      right: 16.0,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  )
                : SizedBox(),
          ],
        ),
        body: FoldableSidebarBuilder(
          drawerBackgroundColor: Colors.grey[200],
          drawer: DrawerHome(
            closeDrawer: () {
              setState(() {
                this._status = FSBStatus.FSB_CLOSE;
              });
            },
          ),
          screenContents: ConteudoHome(),
          status: this._status,
        ),
      ),
    );
  }
}
