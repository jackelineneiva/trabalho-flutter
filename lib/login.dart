import 'package:flutter/material.dart';
import 'package:travel_app/telaPasso1.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        const Title(
            title: 'Faça seu login ',
            description: 'Faça login para continuar nosso aplicativo'),
        LoginEmailESenha(),
        const ButtonLogin(),
        Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 16, right: 32),
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Não tem uma conta?  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    'Inscreva-se',
                    style: TextStyle(
                      color: Colors.blue[400],
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
            )),
        Padding(
            padding: const EdgeInsets.all(32),
            child: Container(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                      'Ou conecte',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      height: 130,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Image.asset('assets/facebook.png')),
                          Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Image.asset('assets/instagram.png')),
                          Padding(
                              padding: const EdgeInsets.only(right: 16),
                              child: Image.asset('assets/twitter.png')),
                        ],
                      ))
                ],
              ),
            ))
      ]),
    ));
  }
}

class LoginEmailESenha extends StatefulWidget {
  const LoginEmailESenha({super.key});

  @override
  _PasswordFieldState createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<LoginEmailESenha> {
  bool _obscured = true;

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
            padding:
                const EdgeInsets.only(top: 16, bottom: 8, left: 32, right: 32),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(34, 206, 206, 206),
              ),
              child: TextFormField(
                decoration: const InputDecoration(
                    isDense: false,
                    hintText: 'Email...',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(20)),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
        Padding(
            padding:
                const EdgeInsets.only(top: 16, bottom: 32, left: 32, right: 32),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(34, 206, 206, 206),
              ),
              child: TextFormField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: _obscured,
                enableSuggestions: false,
                autocorrect: false,
                decoration: const InputDecoration(
                  isDense: false,
                  hintText: 'Senha',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
            )),
        Padding(
            padding: const EdgeInsets.only(top: 0, bottom: 16, right: 32),
            child: Container(
                alignment: Alignment.centerRight,
                child: const Text(
                  'Esqueceu a senha?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    decoration: TextDecoration.underline,
                  ),
                ))),
      ],
    );
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
      padding: const EdgeInsets.only(top: 140, bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          /*2*/
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.w400, fontSize: 32),
            ),
          ),
          Text(
            description,
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.w300,
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
    return Padding(
        padding:
            const EdgeInsets.only(bottom: 64, top: 64, left: 32, right: 32),
        child: SizedBox(
            width: double.infinity,
            height: 60,
            child: TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const Banner1()));
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue[600],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: const Text('Entrar'),
            )));
  }
}
