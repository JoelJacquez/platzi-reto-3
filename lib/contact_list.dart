import 'package:flutter/material.dart';
import 'contact_card.dart';
class ContactList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
      child: ListView(
        children: <Widget>[
          ContactCard('Código Lobo', 'Culiacán, Sin.', 'assets/images/codigo-lobo.jpg', true),
          ContactCard('Chavalones', 'Culiacán, Sin.', 'assets/images/chavalones.jpg', false),
          ContactCard('MC Navolato', 'Navolato, Sin.', 'assets/images/mc-navolato.jpg', true),
          ContactCard('Pata Salada', 'Mazatlán, Sin.', 'assets/images/pata-salada-maz.jpg', true),
          ContactCard('Bad-Co', 'Culiacán, Sin.', 'assets/images/badco.jpg', false),
          ContactCard('Maniacos', 'Culiacán, Sin.', 'assets/images/maniacos.jpg', false),
          ContactCard('Tribe Sinaloa', 'Culiacán, Sin.', 'assets/images/tribe-sinaloa.jpg', false),
        ],
      ),
    );
  }
  
}