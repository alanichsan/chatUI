import 'package:abyow_chat/shared/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(GetStartedPage());

class GetStartedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // NOTE : LOGO
    Widget logo() {
      return
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: 45,
            margin: EdgeInsets.only(
              top: 50,
            ),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/logo.png'))),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            margin: EdgeInsets.only(
              top: 50,
            ),
            child: Text(
              'Abyow',
              style: redTextStyle.copyWith(
                fontSize: 32,
                fontWeight: bold,
              ),
            ),
          )
        ],
      );
    }

    // NOTE : BTN LOGN  &  AGREEMENT
    Widget btnLogin(){
      return  Column(
              children: [
                // NOTE : BTN LOGN 
                Container(
                  width: 222,
                  height: 40,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                      backgroundColor: kPrimaryColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      shadowColor: kPrimaryColor,
                      elevation: 3,
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/room-chat');
                    },
                    child: Text(
                      'LOGIN WITH PHONE NUMBER',
                      style: whiteTextStyle.copyWith(
                        fontWeight: light,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                // NOTE : AGREEMENT
                Text(
                  'By clicking “Log in “ , You agree with our Terms. Learn how we process your data  our privacy police.',
                  style: greyTextStyle.copyWith(
                    fontWeight: light,
                  ),
                ),
              ],
            );
    }

    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            // NOTE : LOGO
            logo(),
            SizedBox(
              height: 30,
            ),
            // NOTE : HERO
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/hero.png'))),
            ),
            SizedBox(
              height: 30,
            ),
            // NOTE : BTN LOGN  &  AGREEMENT
            btnLogin(),
          ],
        ),
      ),
    );
  }
}
