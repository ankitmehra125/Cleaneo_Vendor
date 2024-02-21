import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:cleaneo_vendor/Screens/WelcomePage.dart';
import 'package:cleaneo_vendor/main.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String _selectedLanguage = 'en'; // Default language selection

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: 'logoTag',
            child: SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: SvgPicture.asset("assets/splash.svg", fit: BoxFit.cover),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 20, // Adjust bottom margin as needed
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DropdownButton<String>(
                    value: _selectedLanguage,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectedLanguage = newValue!;
                      });
                    },
                    items: <String>['en', 'hi'].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value == 'en' ? 'English' : 'हिंदी',
                          style: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Set the locale dynamically based on the selected language
                      MyApp.setLocale(context, _selectedLanguage);
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (BuildContext context) => const WelcomePage(),
                        ),
                      );
                    },
                    child: const Text('Next Page'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}