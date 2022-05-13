import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(5),
      height: 250,
      width: 195,
      child: Stack(
        clipBehavior: Clip.hardEdge,
        children: [
          Container(
            decoration: BoxDecoration(
              image: const DecorationImage(
                image: AssetImage("assets/images/burger.jpg"),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(
                begin: Alignment.bottomCenter,
                colors: [
                  Colors.black87,
                  Colors.transparent,
                  Colors.transparent,
                ],
                end: Alignment.topCenter,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Flexible(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.grey[200]?.withOpacity(0.35),
                      ),
                      margin: const EdgeInsets.all(10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 7.5, vertical: 2.5),
                      child: Text(
                        "Burger",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context).textTheme.button?.copyWith(
                              color: Colors.white,
                              letterSpacing: 0.5,
                            ),
                      ),
                    ),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cheese Burger With Stuff',
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.subtitle1?.copyWith(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            '30 min | 1 serving',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium
                                ?.copyWith(
                                  color: Colors.white,
                                ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 20),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Material(
                        color:
                            Colors.grey[200]?.withOpacity(0.35), // button color
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: const SizedBox(
                            width: 30,
                            height: 30,
                            child: Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {},
                        ),
                      ),
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
