import 'package:flutter/material.dart';

class FoodDetail extends StatelessWidget {
  const FoodDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //A ScrollView that creates custom scroll effects using slivers.
      body: CustomScrollView(
        slivers: [
          //A Material Design app bar that integrates with a CustomScrollView.
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                ),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                  child: Text(
                    "Delicious Burger Food",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                ),
                width: double.maxFinite,
                padding: EdgeInsets.only(top: 5, bottom: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: Colors.amber.shade100,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                "https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8ZmFzdCUyMGZvb2R8ZW58MHx8MHx8fDA%3D&fm=jpg&q=60&w=3000",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 20, right: 20),
                  child: Text(
                    "Food is vital to our survival and keeps our bodies in a functioning state. Food becomes a necessary component of our body’s functioning the moment we are born. A balanced diet improves our ability to fend off sickness, boosts our immunity, gives us energy throughout the day, and controls our mood. It further aids in meeting our body’s developmental benchmarks at various growth stages. Furthermore, food plays a significant role in fostering global cultural experiences and connections with a diverse range of individuals. It’s interesting to note that food has the ability to strengthen bonds between people and reach the heart. A common way that we can show one another how much we care and how connected we are is by sharing our meals together with family and friends. It’s also the easiest method for making wonderful memories. People who share common food preferences, love to cook, or are curious to try new cuisines often feel connected quickly. It is also frequently the focal point of celebrations of any kind.It is a representation of the various cuisines around the world. A diverse array of food options is available to fulfill our eating preferences, ranging from basic meals like grains, cereals, fruits, and vegetables, to meat and dairy products. Unfortunately, food waste is becoming a more pressing worldwide issue. One of the main causes of the major negative effects on the environment and the economy is food waste.With time, choosing reasonable, healthful foods not only reduces our chance of contracting multiple illnesses but also improves our overall well-being and mood. Thus, in order to live an ideal life, we must stay away from junk food and cultivate good eating habits.Living cells require a balance of all nutrients, including minerals, fiber, vitamins, proteins, and fats, in order to be healthy and fit. This implies that in order to sustain health and vitality, a variety of foods in the proper proportions must be consumed. Consuming a variety of foods boosts our immune system and helps us fight against a range of diseases because each type of food has a special nutritional value.   ",
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
