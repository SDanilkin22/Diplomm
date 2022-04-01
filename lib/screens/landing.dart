import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/domain/authuser.dart';
import 'package:untitled4/screens/auth.dart';
import 'package:untitled4/screens/home.dart';

class LandingPage extends StatelessWidget {
  const LandingPage ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthUser? user = Provider.of<AuthUser?>(context);
    final bool isLoggedIn = user!=null;

   return isLoggedIn ? HomePage() : AuthorizationPage();
    }
  }
