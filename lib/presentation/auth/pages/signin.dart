import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify_app/common/widgets/appbar/app_bar.dart';
import 'package:spotify_app/core/config/assets/app_vectors.dart';


class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BasicAppBar(
        title: SvgPicture.asset(
          AppVectors.logo,
          height: 40,
          width: 40,
        ),
      ),
      body: Column(

      ),
    );
  }
}