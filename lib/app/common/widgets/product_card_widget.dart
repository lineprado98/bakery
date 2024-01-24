import 'package:flutter/material.dart';

class ProductCardWidget extends StatelessWidget {
  const ProductCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10, bottom: 0),
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm3Y-wVHkz5guHAwLni7OH-pXUIUVUbyvMyw&usqp=CAU', // Certifique-se de que item.image contenha a URL da imagem
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      width: 73,
                      height: 26,
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.shadow.withOpacity(0.5),
                        borderRadius: const BorderRadius.only(
                          bottomLeft: Radius.elliptical(20, 20),
                          topRight: Radius.elliptical(20, 20),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            size: 18,
                            Icons.star,
                            color: Theme.of(context).colorScheme.secondary,
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 10),
                            child: Text(
                              '4.5',
                              style: TextStyle(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 134,
                  ),
                  Text('Espresso', style: Theme.of(context).textTheme.titleMedium),
                  Text(
                    'with Oa t Milk',
                    style: TextStyle(fontSize: 10, color: Theme.of(context).colorScheme.outline),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text('\$ 4.20', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w700, color: Theme.of(context).colorScheme.onBackground)),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.elliptical(20, 20),
                      bottomRight: Radius.elliptical(20, 20),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: Theme.of(context).colorScheme.onTertiary,
                      ),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
