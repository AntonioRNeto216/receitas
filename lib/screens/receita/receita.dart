import 'package:flutter/material.dart';

class Receita extends StatelessWidget {
  final String nomeReceita, caminhoImagem;

  const Receita({
    Key key,
    @required this.nomeReceita,
    @required this.caminhoImagem,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Column(
            children: [
              SizedBox(
                height: size.height * 0.325,
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 8.0,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.0),
                      topRight: Radius.circular(60.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 36.0, 16.0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                          text: TextSpan(
                            text: this.nomeReceita,
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 22.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 12.0,
                        ),
                        Expanded(
                          child: SizedBox(
                            child: ListView(
                              physics: BouncingScrollPhysics(),
                              children: [
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum sit amet aliquam ex. Vestibulum elementum dictum placerat. Morbi id tellus iaculis, consequat purus sed, pellentesque nulla. Fusce faucibus eros ut diam consectetur, nec dapibus nunc ornare. Ut laoreet elementum fringilla. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam porttitor vitae enim a eleifend. Praesent gravida efficitur consectetur.\nAliquam a dapibus quam. Fusce tristique sem id rhoncus cursus. Vivamus volutpat, diam sit amet pulvinar condimentum, neque odio dictum tortor, vel tincidunt dui neque et quam. Ut eget dui cursus, malesuada leo vitae, consequat augue. Sed dolor magna, pretium nec risus vitae, pretium porta massa. Nulla purus arcu, malesuada vitae dui ac, volutpat ornare nulla. Nulla quis finibus leo. Cras ac ligula ex. Etiam eget odio vel nisl varius hendrerit. Nunc posuere, nunc at sodales tempor, erat leo ultrices massa, varius sagittis mauris lorem et lorem. Nunc convallis quam nunc. Suspendisse tincidunt tortor vel diam ullamcorper vestibulum. Fusce ullamcorper felis vel turpis rhoncus tempor. Sed maximus ultricies nisi vel vestibulum. Sed justo eros, feugiat at tellus faucibus, tempor tincidunt massa. Fusce pretium, erat sed auctor sollicitudin, urna urna mattis lectus, quis feugiat massa eros imperdiet nibh.",
                                  style: TextStyle(
                                    color: Colors.black54,
                                    fontSize: 14.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              this.caminhoImagem,
              width: size.height * 0.65,
              height: size.height * 0.3,
            ),
          ),
        ],
      ),
    );
  }
}
