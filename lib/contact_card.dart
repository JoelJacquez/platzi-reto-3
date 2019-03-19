import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  
  String name;
  String imagePath;
  String city;
  bool fav = false;

  ContactCard(this.name, this.city, this.imagePath, this.fav);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      margin: EdgeInsets.only(
        top: 0, 
        left: 0,
        bottom: 10, 
      ),
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover, 
          image: AssetImage(imagePath)
        )
      ),
    );

    final clubName = Container(
      margin: EdgeInsets.only(
        left: 5,
        top: 30
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
    );

    final clubCity = Container(
      margin: EdgeInsets.only(
        left: 5,
        top: 5,
        bottom: 20
      ),
      child: Text(
        city,
        textAlign:TextAlign.left
      ),
    );

    final loveButton =  Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 20
      ),
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: fav? Colors.red : Colors.grey
      ),
      child: Icon(
        Icons.favorite,
        color: Colors.white
      ),
    );
   
    final clubDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        clubName,
        clubCity,
        // loveButton
      ],
    );

    final contacRow = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        photo,
        clubDetails,
        loveButton
      ],
    );
   
    final contactCard = Card(
      margin: EdgeInsets.only(top: 10),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          ListTile(
            leading: photo,
            title: clubDetails,
            trailing: loveButton,
          )
        ],
      ),
    );
   
    return contactCard;
    // return contacRow;
    // return null;
  }
}
