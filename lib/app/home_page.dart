import 'package:bakery/app/common/widgets/primary_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Image.asset(
                'assets/images/coffee.png',
                width: 250,
                height: 350,
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              'Stay Focused',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              'Get the cup filled of your choice to stay \n focused and awake. Diffrent type of coffee\n menu, hot lottee cappucino',
              style: Theme.of(context).textTheme.bodyMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const PrimaryButtonWidget(
              title: 'Dive In',
            )
          ],
        ),
      ),
    );
  }
}
