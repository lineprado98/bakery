import 'dart:ui';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/material.dart';

class CoffeeDetailsWidget extends StatelessWidget {
  const CoffeeDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.sizeOf(context).height * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://th-thumbnailer.cdn-si-edu.com/7xppQXAxd3nfDPudhdqR7i7tbOo=/fit-in/1600x0/filters:focal(461x237:462x238)/https://tf-cmsv2-smithsonianmag-media.s3.amazonaws.com/filer/b5/94/b5942caf-8c09-40c2-842e-c52f99f9344f/mocha.jpg'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
          ),
          Positioned(
            top: 28,
            bottom: 0,
            left: 12,
            right: 12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  child: IconButton(
                    alignment: Alignment.center,
                    iconSize: 18,
                    color: Theme.of(context).colorScheme.onTertiary,
                    icon: const Icon(Icons.arrow_back_ios_rounded),
                    onPressed: () {},
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Theme.of(context).colorScheme.background,
                  child: IconButton(
                    alignment: Alignment.center,
                    iconSize: 18,
                    color: Theme.of(context).colorScheme.onTertiary,
                    icon: const Icon(Icons.favorite_border),
                    onPressed: () {},
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(40),
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: 120,
                  color: Colors.black.withOpacity(0.3),
                ),
              ),
            ),
          ),
          Positioned(
              top: 0,
              bottom: 82,
              left: 1,
              right: 1,
              child: IconButton(
                iconSize: 20,
                icon: Icon(Icons.face_2_outlined),
                onPressed: () {},
              )),
          Positioned(
            bottom: 42,
            left: 26,
            right: 26,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'Espresso',
                      style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
                    ),
                    Text(
                      'with chocolate',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.onTertiary),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/group.svg',
                        width: 23,
                        height: 23,
                      ),
                    ),
                    Text(
                      'Coffee',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/drop-svgrepo-com.svg',
                        width: 23,
                        height: 23,
                      ),
                    ),
                    Text(
                      'Chocolate',
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: Theme.of(context).colorScheme.onTertiary,
                          ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            bottom: 10,
            left: 24,
            right: 0,
            child: Row(
              children: [
                Icon(
                  size: 24,
                  Icons.star,
                  color: Theme.of(context).colorScheme.secondary,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: RichText(
                    text: TextSpan(
                      style: DefaultTextStyle.of(context).style,
                      children: [
                        TextSpan(
                          text: '4.5',
                          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                              ),
                        ),
                        TextSpan(
                          text: ' (6,125)',
                          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                                color: Theme.of(context).colorScheme.onTertiary,
                              ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
