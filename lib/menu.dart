import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Cliente(),
                          const Title(
                            title: 'Explore o',
                            description: 'o Belo mundo world!',
                          ),
                          Container(
                              padding: const EdgeInsets.only(
                                  top: 0, bottom: 16, left: 32, right: 32),
                              alignment: Alignment.centerLeft,
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                padding: const EdgeInsets.all(8),
                                child: Row(
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Image.asset('assets/viagem1.png'),
                                    ),
                                    const SizedBox(width: 16),
                                    Container(
                                      padding: const EdgeInsets.all(16),
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20)),
                                      ),
                                      child: Image.asset('assets/viagem2.png'),
                                    ),
                                  ],
                                ),
                              )),
                        ]),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width,
                      padding: const EdgeInsets.only(top: 10),
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 6,
                            blurStyle: BlurStyle.normal,
                            color: Color.fromARGB(28, 0, 0, 0),
                            offset: Offset.zero,
                            spreadRadius: 0,
                          ),
                        ],
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 24, right: 32),
                        alignment: Alignment.centerLeft,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/Caht.svg'),
                                  Text('Mensagens')
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/Home.svg'),
                                  Text('Home')
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset('assets/Person.svg'),
                                  Text('Perfil')
                                ],
                              ),
                            ]),
                      )),
                ])));
  }
}

class Cliente extends StatelessWidget {
  const Cliente({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 48, bottom: 0, left: 32, right: 32),
        child: Container(
            alignment: Alignment.centerLeft,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(88, 236, 236, 236),
                ),
                alignment: Alignment.centerLeft,
                width: MediaQuery.of(context).size.width * 0.40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(4),
                      child: Image.asset('assets/perfil.png'),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Leonardo',
                      style: TextStyle(
                          color: Color.fromARGB(255, 57, 57, 57),
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              )
            ])));
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:
            const EdgeInsets.only(top: 32, bottom: 32, left: 32, right: 32),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        text: title,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 50,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        text: description,
                        style: const TextStyle(
                            color: Colors.grey,
                            fontSize: 34,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ])),
        ));
  }
}
