import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCardListWidget extends StatefulWidget {
  ProductCardListWidget({super.key});

  @override
  State<ProductCardListWidget> createState() => _ProductCardListWidgetState();
}

class _ProductCardListWidgetState extends State<ProductCardListWidget> {
  @override
  Widget build(BuildContext context) {
    ValueNotifier<int> quantity = ValueNotifier<int>(0);

    void addItem() {
      print('+');
      quantity.value++;
    }

    void removeItem() {
      print('-');

      quantity.value--;
    }

    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(0.8),
          decoration: BoxDecoration(color: Theme.of(context).colorScheme.surfaceVariant, borderRadius: BorderRadius.circular(15)),
          child: SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.16,
            width: MediaQuery.sizeOf(context).width * 0.9,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: CachedNetworkImage(
                      width: 80,
                      height: 80,
                      fit: BoxFit.cover,
                      imageUrl: 'https://s2-g1.glbimg.com/detGX6jAIpR0gJnvyYW2-o4GEmI=/0x0:1920x1280/984x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_59edd422c0c84a879bd37670ae4f538a/internal_photos/bs/2018/W/u/Q79lelQCKAYh1GlAu3ag/coffe-1354786-1920.jpg', // Certifique-se de que item.image contenha a URL da imagem,
                      placeholder: (context, url) => const CircularProgressIndicator(),
                      errorWidget: (context, url, error) => const Icon(Icons.error),
                    ),
                  ),
                ),
                ValueListenableBuilder<int>(
                    valueListenable: quantity,
                    builder: (context, value, chield) {
                      return Column(
                        children: [
                          const Text('Espresso with oat milk'),
                          const Text('12 R\$'),
                          Row(
                            children: [
                              const Text('Delivery fee US R\$3'),
                              ButtonQuantityChangeWidget(
                                iconButton: 'assets/icons/subtract.svg',
                                onPressed: removeItem,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  ' ${quantity.value}',
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ),
                              ButtonQuantityChangeWidget(
                                iconButton: 'assets/icons/layer.svg',
                                onPressed: addItem,
                              )
                            ],
                          )
                        ],
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonQuantityChangeWidget extends StatelessWidget {
  final String iconButton;
  final void Function() onPressed;
  const ButtonQuantityChangeWidget({super.key, required this.iconButton, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 18,
      height: 18,
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all(EdgeInsets.all(1)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          )),
        ),
        child: SvgPicture.asset(
          iconButton,
        ),
      ),
    );
  }
}
