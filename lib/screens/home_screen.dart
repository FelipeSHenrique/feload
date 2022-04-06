import 'package:feload/components/platform_item.dart';
import 'package:feload/layout/layout_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: const [
                Icon(
                  Icons.menu,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'FeLoad',
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(fontSize: 35, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Baixe videos nas mais diversas plataformas.',
                  style: TextStyle(color: Color(0xff949EAD)),
                )
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SvgPicture.asset('assets/image/banner.svg'),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Plataformas',
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Icon(Icons.east)
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      PlatformItem(
                        svgIcon: 'assets/image/Youtube.svg',
                        title: 'YouTube',
                      ),
                      PlatformItem(
                        svgIcon: 'assets/image/Facebook.svg',
                        title: 'Facebook',
                      ),
                      PlatformItem(
                        svgIcon: 'assets/image/Instagram.svg',
                        title: 'Instagram',
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    primary: Colors.white,
                    textStyle: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Ver todos',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
