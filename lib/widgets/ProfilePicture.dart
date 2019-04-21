import 'package:flutter/material.dart';
import './../styles/widgets/profile-picture.dart';
import './../styles/variables.dart';

class ProfilePicture extends StatelessWidget {
  final String imageUrl;
  final String initial;

  ProfilePicture({this.imageUrl = '', this.initial = ''});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      maxRadius: 50.0,
      minRadius: 20.0,
      backgroundImage: NetworkImage(this.imageUrl),
      backgroundColor: colorPrimaryAccent,
      child: Text(
        this.initial == '' && this.imageUrl == ''? 'N/A' : this.initial,
        style: styleInitialName,
      ),
    );
  }
}
