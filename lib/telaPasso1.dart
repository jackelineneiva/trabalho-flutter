import 'package:flutter/material.dart';
import 'package:travel_app/telaPasso3.dart';

final emailInputController = TextEditingController();
final passwordInputController = TextEditingController();

class Banner1 extends StatelessWidget {
  const Banner1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.zero,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 480,
                    child: Image.asset(
                      'assets/telaPasso1.png',
                      width: MediaQuery.of(context).size.width,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 64, right: 64),
                      child: Column(children: [
                        Title(
                            title: 'A vida é curta e o mundo é ',
                            titleHighlighted: 'vasto',
                            description:
                                'Na Friends tours and travel, personalizamos passeios educacionais confiáveis e confiáveis para destinos em todo o mundo'),
                      ])),
                  Image.asset('assets/passo1.png'),
                  const Padding(
                      padding: EdgeInsets.all(16), child: ButtonLogin()),
                ]),
          ),
        ),
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.title,
    required this.titleHighlighted,
    required this.description,
  });

  final String title;
  final String titleHighlighted;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*2*/
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: SizedBox(
              height: 100,
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                    text: title,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 32,
                        fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: titleHighlighted,
                        style: const TextStyle(
                            color: Color.fromARGB(255, 255, 145, 0),
                            fontSize: 32,
                            fontWeight: FontWeight.w400),
                      ),
                    ]),
              ),
            ),
          ),
          Text(
            description,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.grey,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: double.infinity,
        height: 60,
        child: TextButton(
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (BuildContext context) => const Banner2()));
          },
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue[400],
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: const Text('Iniciar'),
        ));
  }
}
