import 'package:flutter/material.dart';

class ExploreDetailScreen extends StatelessWidget {
  const ExploreDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset('assets/images/destination1.png', height: 300, width: double.infinity, fit: BoxFit.cover),
              Positioned(
                top: 40,
                left: 20,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () => Navigator.pop(context),
                ),
              ),
              const Positioned(
                top: 40,
                right: 20,
                child: Icon(Icons.favorite_border, color: Colors.white),
              ),
            ],
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Niladri Reservoir', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  const Text('Tekergat, Sunamganj', style: TextStyle(fontSize: 16, color: Colors.grey)),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.location_on, color: Colors.grey, size: 20),
                          SizedBox(width: 5),
                          Text('Tekergat'),
                          SizedBox(width: 10),
                          Icon(Icons.star, color: Colors.amber, size: 20),
                          Text('4.7 (2498)'),
                        ],
                      ),
                      const Text('\$59/Person', style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildIcon('assets/images/bus.png'),
                      _buildIcon('assets/images/train.png'),
                      _buildIcon('assets/images/plane.png'),
                      _buildIcon('assets/images/ship.png'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Text('About Destination', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  const Text(
                    'You will get a complete travel package on the beaches. Packages in the form of airline tickets, recommended hotel rooms, transportation. Have you ever been on holiday to the Greek ETC... Read More',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text('Book Now', style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(String iconPath) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: CircleAvatar(
        backgroundColor: Colors.grey.shade200,
        radius: 25,
        child: Image.asset(iconPath, width: 30, height: 30),
      ),
    );
  }
}