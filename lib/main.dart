import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lesson_eleven_detail_categories/utils/constants_breakfast.dart';

void main() {
  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BreakfastPage(),
    );
  }
}
//
class BreakfastPage extends StatelessWidget {
  const BreakfastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.BackgroundColor,
      extendBody: true,
      appBar: AppbarBreakfast(
        lead: "assets/svg/vector.svg",
        title: "Breakfast",
        action: "assets/svg/notification.svg",
        search: "assets/svg/search.svg",
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                  BreakfastBodyItems(
                    image: "assets/images/lunch.png",
                    title: "Eggs Benedict",
                    txt: "Muffin with Canadian bacon",
                    star: "5",
                    time: "15 min",
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const BottomNavigation(
        home: "assets/svg/home.svg",
        category: "assets/svg/categories.svg",
        community: "assets/svg/community.svg",
        profile: "assets/svg/profile.svg",
        paddingbottom: 30,
        widht: 281,
        height: 56,
      ),
    );
  }
}

class AppbarBreakfast extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  const AppbarBreakfast({
    super.key,
    required this.lead,
    required this.title,
    required this.action,
    required this.search,
  }) : preferredSize = const Size.fromHeight(100);

  final String lead, title, action, search;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: AppColors.BackgroundColor,
      surfaceTintColor: Colors.transparent,
      leadingWidth: 50,
      leading: SizedBox(
        width: 16,
        height: 14,
        child: IconButton(
          icon: SvgPicture.asset(
            lead,
            fit: BoxFit.cover,
          ),
          onPressed: () {},
        ),
      ),
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(
          color: AppColors.RedPinkMain,
          fontSize: 20,
          fontWeight: FontWeight.w400,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.Pink,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    action,
                    width: 13,
                    height: 17,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 28,
                height: 28,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: AppColors.Pink,
                ),
                child: Center(
                  child: SvgPicture.asset(
                    search,
                    width: 12,
                    height: 18,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class BreakfastBodyItems extends StatelessWidget {
  const BreakfastBodyItems({
    super.key,
    required this.image,
    required this.title,
    required this.txt,
    required this.star,
    required this.time,
  });

  final String image, title, txt, star, time;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        SizedBox(
          width: 164,
          height: 153,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image(
              image: AssetImage(
                image,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: -69,
          left: 8,
          child: Container(
            width: 150,
            height: 76,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(14),
                bottomRight: Radius.circular(14),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(
                left: 15,
                top: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    txt,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 8,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        star,
                        style: TextStyle(
                          color: AppColors.RatingColor,
                          fontSize: 10,
                        ),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      SvgPicture.asset(
                        "assets/svg/star.svg",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 50,
                      ),
                      SvgPicture.asset(
                        "assets/svg/clock.svg",
                        width: 10,
                        height: 10,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        time,
                        style: TextStyle(
                          color: AppColors.RatingColor,
                          fontSize: 10,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
    required this.home,
    required this.category,
    required this.community,
    required this.profile,
    required this.paddingbottom,
    required this.widht,
    required this.height,
  });

  final String home, category, community, profile;
  final double widht, height, paddingbottom;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: paddingbottom),
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: widht, //281/56
          height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(34),
            color: Color(0xFFFD5D69),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                home,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
              SvgPicture.asset(
                category,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
              SvgPicture.asset(
                community,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
              SvgPicture.asset(
                profile,
                fit: BoxFit.cover,
                width: 27,
                height: 27,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
