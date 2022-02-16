import 'package:flutter/material.dart';

import '../widgets/card_carousel.dart';
import '../widgets/featured_card.dart';
import '../widgets/list_view.dart';
import '../widgets/my_drawer.dart';
import '../widgets/my_nav_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff4338CA),
      appBar: AppBar(
        backgroundColor: const Color(0xff4338CA),
        elevation: 0,
        title: const Text("FlutterBricks Widgets"),
      ),
      drawer: DrawerFb1(),
      extendBody: true,
      bottomNavigationBar: const BottomNavBarCurvedFb1(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(1),
        child: Column(
          children: [
            Container(
              height: 240,
              child: CustomCarouselFB2(),
            ),
            const Divider(
              height: 1,
              color: Colors.white,
            ),
            Container(
              child: CategoriesListMallika1(),
            ),
            const SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,
              ),
              height: 400,
              child: Column(
                children: [
                  SocialPictureGroup(
                    title: "First Cookbooks",
                    color: Colors.orange,
                    imgUrl:
                        'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/malika%2FcurryImage.png?alt=media&token=904f3d02-c37e-4e75-99ef-91be24d018af',
                    onTap: () {},
                  ),
                  Divider(thickness: 1),
                  SocialPictureGroup(
                    title: "First Cookbooks",
                    color: Colors.orange,
                    imgUrl:
                        'https://firebasestorage.googleapis.com/v0/b/flutterbricks-public.appspot.com/o/malika%2FcurryImage.png?alt=media&token=904f3d02-c37e-4e75-99ef-91be24d018af',
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
