import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spotify_app/common/helper/is_dark_mode.dart';
import 'package:spotify_app/presentation/auth/pages/signup_or_signin.dart';

class BasicAppBar extends StatelessWidget implements PreferredSizeWidget{
  final Widget? title;
  const BasicAppBar({this.title,super.key});

  @override
  Widget build(BuildContext context) {
    
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      title: title ?? const Text(''),
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: context.isDarkMode ? Colors.white.withOpacity(0.03) : Colors.black.withOpacity(0.04),
            shape: BoxShape.circle,
          ),
          child: Icon(Icons.arrow_back_ios_new, color: context.isDarkMode ? Colors.white : Colors.black,),
        ),
      ),
    );
  }
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}