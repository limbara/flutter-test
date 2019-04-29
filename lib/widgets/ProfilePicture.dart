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
      minRadius: 30.0,
      backgroundImage: this.imageUrl != ''? NetworkImage(this.imageUrl) : null,
      backgroundColor: colorPrimaryAccent,
      child: Text(
        this.initial == '' && this.imageUrl == ''? 'N/A' : this.initial,
        style: styleInitialName,
      ),
    );
  }
}
