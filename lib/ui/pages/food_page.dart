part of 'pages.dart';

class FoodPage extends StatefulWidget {
  final String id;
  FoodPage(this.id);
  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int quantity = 10;
  int jumlah = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
              child: Container(
            color: Colors.white,
          )),
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 100,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            colorFilter: ColorFilter.mode(
                                Colors.white.withOpacity(0.8),
                                BlendMode.screen),
                            image: NetworkImage(
                                "https://pngimg.com/uploads/pizza/pizza_PNG44095.png"),
                            fit: BoxFit.cover)),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(0, 1),
                            end: Alignment(0, 0.06),
                            colors: [
                          Colors.white,
                          Colors.white.withOpacity(0)
                        ])),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 24,
                          height: 24,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/arrow_forward_24px.png"))),
                        ),
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      "assets/favorite_24px_outlined.png"),
                                  fit: BoxFit.contain)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 58),
                    child: Center(
                        child: Hero(
                      tag: 1,
                      child: Container(
                        width: 200,
                        height: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://pngimg.com/uploads/pizza/pizza_PNG44095.png"))),
                      ),
                    )),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 12),
                padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20)),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width - 134,
                              child: Text('Hot Pizza',
                                  style: blackTextFont.copyWith(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w500)),
                            ),
                            RatingStars(4.5),
                          ],
                        ),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantity = min(9990, quantity + 10);
                                  jumlah = min(999, jumlah + 1);
                                });
                              },
                              child: Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/btn_add.png'))),
                              ),
                            ),
                            SizedBox(
                              width: 50,
                              child: Text(jumlah.toString(),
                                  textAlign: TextAlign.center,
                                  style: blackTextFont.copyWith(fontSize: 16)),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  quantity = max(10, quantity - 10);
                                  jumlah = max(1, jumlah - 1);
                                });
                              },
                              child: Container(
                                width: 26,
                                height: 26,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    border: Border.all(width: 1),
                                    image: DecorationImage(
                                        image:
                                            AssetImage('assets/btn_min.png'))),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 12, 0, 16),
                      child: Text(
                          'A savory dish from Italy, a kind of dough round and flat, baked in the oven and usually covered in tomato sauce and cheese with other food dditives which can be selected.',
                          style: secondaryTextFont.copyWith(fontSize: 14)),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Ingredients',
                          style: blackTextFont.copyWith(fontSize: 16),
                        ),
                        Text(
                          '5 items',
                          style: secondaryTextFont.copyWith(fontSize: 16),
                        )
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 4, 0, 41),
                      child: Text(
                        'wheat, chicken, sauce, sausage, cheese',
                        style: secondaryTextFont.copyWith(fontSize: 14),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Total Price:',
                              style: secondaryTextFont.copyWith(fontSize: 13),
                            ),
                            Row(
                              children: [
                                Text('\$',
                                    style:
                                        blackTextFont.copyWith(fontSize: 24)),
                                Text(quantity.toString(),
                                    style:
                                        blackTextFont.copyWith(fontSize: 28)),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                            width: 163,
                            height: 45,
                            child: RaisedButton(
                              onPressed: () {},
                              color: mainColor,
                              elevation: 0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              child: Text(
                                'Order Now',
                                style: blackTextFont.copyWith(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
