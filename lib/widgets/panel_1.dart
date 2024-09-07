import 'package:flutter/material.dart';

class Pannel1 extends StatelessWidget {
  const Pannel1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(24),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Stack(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(
                      12), // To make the image corners rounded
                  child: Image.asset(
                    'images/2757734.jpg',
                    height: MediaQuery.of(context).size.height,
                    fit: BoxFit.cover,
                  )),
              // The gradient at the bottom to make it transparent
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  height:
                      80, // Adjust this to control the height of the gradient
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.transparent,
                        Colors.black.withOpacity(
                            0.7), // Transparent to black gradient
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      "Explore Demo Limited's Premier Logistics and Freight Services",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize:
                            MediaQuery.of(context).size.width * 0.025,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

