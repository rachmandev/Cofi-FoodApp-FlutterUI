import 'package:cofi/theme.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back_ios),
                  ),
                  Image.asset(
                    "assets/icons/menu.png",
                    width: 24,
                  )
                ],
              ),
              Container(
                width: 192,
                height: 243,
                margin: const EdgeInsets.only(top: 50),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/startbuck.png"),
                  ),
                ),
              ),
              Text(
                "Caramel Macchiato",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                "We cannot guarantee that any unpackaged\nproducts served in our stores are allergen-free",
                style: secondaryTextStyle.copyWith(fontSize: 12),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "SIZE",
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  sizeChart(
                    title: "S",
                    status: true,
                  ),
                  const SizedBox(width: 35),
                  sizeChart(
                    title: "M",
                    status: false,
                  ),
                  const SizedBox(width: 35),
                  sizeChart(
                    title: "L",
                    status: false,
                  )
                ],
              ),
              const SizedBox(height: 15),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "COMBO",
                  style: primaryTextStyle.copyWith(
                    fontSize: 12,
                    fontWeight: semiBold,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                width: double.infinity,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/food.png",
                      width: 49,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "CROISSANT",
                            style: TextStyle(
                              fontWeight: semiBold,
                            ),
                          ),
                          Image.asset(
                            "assets/icons/Rattings.png",
                            width: 95,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Image.asset(
                      "assets/icons/add.png",
                      width: 24,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 10),
                  Image.asset(
                    "assets/icons/orderbag.png",
                    width: 67,
                  ),
                  const SizedBox(width: 25),
                  Container(
                    width: 220,
                    height: 55,
                    margin: const EdgeInsets.only(top: 10),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "ADD TO BAG",
                            style: buttonTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          ),
                          Image.asset(
                            "assets/icons/saparator.png",
                            width: 27,
                          ),
                          Text(
                            "\$ 5.99",
                            style: buttonTextStyle.copyWith(
                              fontWeight: semiBold,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class sizeChart extends StatelessWidget {
  sizeChart({
    required this.title,
    required this.status,
  });

  final String title;
  final bool status;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 60,
      decoration: BoxDecoration(
        color: status ? primaryColor : backgroundColor,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: primaryColor,
        ),
      ),
      child: Center(
        child: Text(
          title,
          style: status
              ? buttonTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                )
              : primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
        ),
      ),
    );
  }
}
