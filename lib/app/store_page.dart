import 'package:bakery/app/common/widgets/coffee_details_widget.dart';
import 'package:bakery/app/common/widgets/product_card_list_widget.dart';
import 'package:bakery/app/common/widgets/product_card_widget.dart';
import 'package:flutter/material.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: GridView.builder(
      //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //         crossAxisCount: 2, // Set the number of columns here
      //         crossAxisSpacing: 8.0, // Adjust the horizontal spacing between columns
      //         mainAxisSpacing: 8.0,
      //         mainAxisExtent: MediaQuery.sizeOf(context).height * 0.3 // Adjust the vertical spacing between rows
      //         ),
      //     itemCount: 2,
      //     itemBuilder: (context, index) {
      //       return ProductCardWidget();
      //     }),
      // body: CoffeeDetailsWidget(),
      body: ProductCardListWidget(),
    );
  }
}
