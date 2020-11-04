import 'package:covid_cases_app/constants/constants.dart';
import 'package:covid_cases_app/pages/faqs.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class InfoPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          FaqContainer(title: 'FAQ', onTap: () {
            Navigator.push(context, MaterialPageRoute(
              builder: (context) => FAQPage()
            ));
          },),
          FaqContainer(title: 'DONATE', onTap: () {
            launch('https://covid19responsefund.org/en/');
          },),
          FaqContainer(title: 'MYTHBUSTERS', onTap: () {
            launch('https://www.who.int/emergencies/diseases/novel-coronavirus-2019/advice-for-public/myth-busters');
          },),
        ],
      ),
    );
  }
}

class FaqContainer extends StatelessWidget {

  final String title;
  final Function onTap;

  const FaqContainer({
    Key key, this.title, @required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: primaryBlack,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 3,
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Icon(Icons.arrow_forward, color: Colors.white,),
          ],
        ),
      ),
    );
  }
}
