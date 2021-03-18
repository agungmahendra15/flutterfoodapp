part of 'pages.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Color(0xffF8FBFF), Color(0xffEDE5D8)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight),
          ),
          child: ListView(
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                color: Colors.transparent,
                height: 100,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Food Cious",
                          style: blackTextFont.copyWith(
                              fontSize: 24, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Let's get some foods",
                          style: secondaryTextFont.copyWith(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                  'https://image.freepik.com/free-photo/happy-lady-with-asian-appearance-makes-korean-like-sign-dressed-casual-yellow-t-shirt-has-friendly-face-expression-stands-indoor-monochrome-shot-body-language-female-expresses-love-with-gesture_273609-31124.jpg'),
                              fit: BoxFit.cover)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(defaultMargin, 0, defaultMargin, 0),
                height: 50,
                width: 327,
                padding: EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Search your fav food',
                      style: secondaryTextFont.copyWith(fontSize: 16),
                    ),
                    Image.asset('assets/Icon_search_outline.png'),
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.fromLTRB(defaultMargin, 26, defaultMargin, 19),
                child: Text(
                  "Recommended For You",
                  style: blackTextFont.copyWith(
                      fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodPage('1')));
                          },
                          child: Container(
                            width: 152,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 26, vertical: 26),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 80,
                                          child: Hero(
                                              tag: 1,
                                              child: Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            'https://pngimg.com/uploads/pizza/pizza_PNG44095.png'),
                                                        fit: BoxFit.cover)),
                                              )),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Hot Pizza",
                                          style: blackTextFont.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("\$100"),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                          "assets/favorite_24px_outlined.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FoodPage('1')));
                        },
                        child: Container(
                          width: 152,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26, vertical: 26),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        child: Hero(
                                          tag: 2,
                                          child: Image.network(
                                              "https://pngimg.com/uploads/pizza/pizza_PNG44095.png"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "Hot Pizza",
                                        style: blackTextFont.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("\$100"),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(
                                        "assets/favorite_24px_outlined.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodPage('1')));
                          },
                          child: Container(
                            width: 152,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 26, vertical: 26),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 80,
                                          child: Hero(
                                            tag: 3,
                                            child: Image.network(
                                                "https://pngimg.com/uploads/pizza/pizza_PNG44095.png"),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Hot Pizza",
                                          style: blackTextFont.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("\$100"),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                          "assets/favorite_24px_outlined.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FoodPage('1')));
                        },
                        child: Container(
                          width: 152,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26, vertical: 26),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        child: Hero(
                                          tag: 4,
                                          child: Image.network(
                                              "https://pngimg.com/uploads/pizza/pizza_PNG44095.png"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "Hot Pizza",
                                        style: blackTextFont.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("\$100"),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(
                                        "assets/favorite_24px_outlined.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FoodPage('1')));
                          },
                          child: Container(
                            width: 152,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Stack(
                              children: [
                                Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 26, vertical: 26),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 80,
                                          width: 80,
                                          child: Hero(
                                            tag: 5,
                                            child: Image.network(
                                                "https://pngimg.com/uploads/pizza/pizza_PNG44095.png"),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 16,
                                        ),
                                        Text(
                                          "Hot Pizza",
                                          style: blackTextFont.copyWith(
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text("\$100"),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      height: 15,
                                      width: 15,
                                      child: Image.asset(
                                          "assets/favorite_24px_outlined.png"),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => FoodPage('1')));
                        },
                        child: Container(
                          width: 152,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                          child: Stack(
                            children: [
                              Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 26, vertical: 26),
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 80,
                                        width: 80,
                                        child: Hero(
                                          tag: 6,
                                          child: Image.network(
                                              "https://pngimg.com/uploads/pizza/pizza_PNG44095.png"),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 16,
                                      ),
                                      Text(
                                        "Hot Pizza",
                                        style: blackTextFont.copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Text("\$100"),
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: Container(
                                    height: 15,
                                    width: 15,
                                    child: Image.asset(
                                        "assets/favorite_24px_outlined.png"),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
