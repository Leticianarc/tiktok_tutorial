import 'package:flutter/material.dart';

class AddButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pink,
      ),
      child: Center(
        child: Text(
          '+',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ),
    );
  }
}

class CircleAnimation extends StatefulWidget {
  final String imageUrl;
  const CircleAnimation({
    Key? key,
    required this.imageUrl,
  }) : super(key: key);

  @override
  State<CircleAnimation> createState() => _CircleAnimationState();
}

class _CircleAnimationState extends State<CircleAnimation>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 5000),
    );
    controller.forward();
    controller.repeat();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: Tween(begin: 0.0, end: 1.0).animate(controller),
      child: Container(
        width: 25, // Tamanho do círculo grande
        height: 25, // Tamanho do círculo grande
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white, width: 2),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 25,
              left: 25,
              child: CircleAvatar(
                radius: 20,
                backgroundColor: Colors.pink,
                child: AddButton(),
              ),
            ),
            Center(
              child: ClipOval(
                child: Image.network(
                  widget.imageUrl,
                  width: 12, // Tamanho do círculo pequeno
                  height: 12, // Tamanho do círculo pequeno
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MainWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Circle Animation Example'),
      ),
      body: Center(
        child: CircleAnimation(
          imageUrl:
              'https://lh3.googleusercontent.com/pw/AP1GczPsZAydOxBlVyGPjoJ6hYZowQrkx0N4EL9jmigfgFgSnNkt0SP_81KwopngJ0GMvVo9tj5Lm781IxS6Dl7C9YktCNb2xqzP7LJuERM1hj7Ph0mMBhqaFa_O_CjS_jUw9GzQ0P3JVvDhCzK4Hm2x7Q680bywXkawrj7wgYmix-DVylWHr-z3iNCuiPwye6nAF4etbW0vZfHFMKyxcibE6ZXvJlvQs_cUVQffCrsewHtqaKxekragseTQ2NAw9pqDhSDQGhe6hsQzotzxdoALDmApfaD-QoO2kgp-zq3O1sDRH59lQXaBwztIO-6MuD6xT2Jm_YBokByLMyZMQE9WE59V8oHygNrnRGDzs32Bb1uj2clBELjLQzjrhoLyPtJaNRxiHdKo2nxrA2inGtdGx-EfUDSRg1RmWrin7FXzONfT_rqSVSQPT7xYcT_fzvfEjgbMa4ZIQyxtegyA1D7sdwwJKEmwKjdl3Vd5FInouZAS181t2UBnV8jxDWqwNU2T41eavuOYTLtvNVX95vyCTFUjFqSrufFzKJTQBH08-d0MRuQTcBz6kEEb0QTxmxE80p9z1nZqo6VtB7iG7Os3d76jKE1gzQtAaOFg2tW-Eg_1hQ0U0itX55xX84b-Q28o6x-3ZnfBVsdSeYMZOeUKyoB32D1M2esURi5_UBGcKiSqARpj7vPsVM6BskuWER6Gnyz-rjQWOzWc5kpVxgFC-SCny34vw5YZ6LdbH8iIaPKSQG7L9LWcoYNefb6DCSsyfTtvbp6f51urQqiLH2Ap0elCPNAJsjMCKonSMqUJsQ9Lg5Rqc12yzq6sttxnC5-vl-7VAnj3Glmwt_SA_qJ9PQgpbecYFkEHNe7t479GlnU2YfkCFkWZY3GVeHHGsSArRYSCwrSpyznApUoVeQCCJLj7eDE=w922-h912-s-no-gm?authuser=0', // URL de imagem
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: MainWidget(),
  ));
}

