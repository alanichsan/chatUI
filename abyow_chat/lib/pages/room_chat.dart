import 'package:abyow_chat/shared/themes.dart';
import 'package:flutter/material.dart';

void main() => runApp(RoomChat());

class RoomChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        width: double.infinity,
        height: 115,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30),
          ),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/arrrow_left.png',
              width: 20,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/profile.png',
              width: 43,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Jakarta Fair',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: regular)),
                SizedBox(
                  height: 2,
                ),
                Text('Online',
                    style: greyTextStyle.copyWith(fontWeight: light)),
              ],
            ),
            Spacer(),
            Image.asset(
              'assets/images/vc.png',
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/call.png',
              width: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Image.asset(
              'assets/images/dot_vertical.png',
              width: 20,
            ),
          ],
        ),
      );
    }

    Widget receiverBubble({
      required String text,
      required String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffEBEFF3),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text, style: greyTextStyle.copyWith(fontWeight: light)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(time, style: greyTextStyle.copyWith(fontWeight: light)),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget senderBubble({
      required String text,
      required String time,
    }) {
      return Container(
        margin: EdgeInsets.only(
          bottom: 30,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(text, style: greyTextStyle.copyWith(fontWeight: light)),
                  SizedBox(
                    height: 5,
                  ),
                  Text(time, style: greyTextStyle.copyWith(fontWeight: light)),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget body() {
      return Expanded(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
          ),
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              receiverBubble(
                text: 'Hay...',
                time: '2:30',
              ),
              senderBubble(
                text:
                    'Helloo',
                time: '3:45',
              ),
              receiverBubble(
                text: 'How are  you ?',
                time: '3:45',
              ),
              senderBubble(
                text:
                    'I’m fine, and you',
                time: '4:08',
              ),
              receiverBubble(
                text: 'I’m fine, thanks',
                time: '6:11',
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        width: MediaQuery.of(context).size.width - (2 * 30),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Color(0xffFFFFFF),
          borderRadius: BorderRadius.circular(18),
        ),
        child: Row(
          children: [
            Image.asset(
              'assets/images/plus.png',
              width: 20,
            ),
            Expanded(
              child: Row(
                children: [
                  Text('Type message ...',
                  style: greyTextStyle.copyWith(fontWeight: light)),
                ],
              ),
            ),
              Image.asset(
                'assets/images/send.png',
                width: 20,
              ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            header(),
            body(),
            chatInput(),
          ],
        ),
      ),
    );
  }
}
