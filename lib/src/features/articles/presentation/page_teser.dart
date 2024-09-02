import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_teser/src/features/articles/presentation/contectuspage_teser.dart';
import 'package:flutter_teser/src/features/articles/presentation/homepage_teser.dart';
import 'package:flutter_teser/src/features/articles/presentation/newspage_tesser.dart';

class PageTeser extends StatelessWidget {
  const PageTeser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: 300.0,
              floating: false,
              pinned: true,
              stretch: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                title: const Text(
                  "Test for Webapp",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                background: Image.network(
                  "https://images.pexels.com/photos/417173/pexels-photo-417173.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: CarouselSlider(
          options: CarouselOptions(
            height: MediaQuery.of(context).size.height * 0.4,
            autoPlay: true,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            enlargeCenterPage: true,
            enableInfiniteScroll: true,
          ),
          items: [
            ItemCard(
              imageUrl:
                  'https://images.pexels.com/photos/46710/pexels-photo-46710.jpeg',
              title: 'Home',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
            ItemCard(
              imageUrl:
                  'https://images.pexels.com/photos/1820567/pexels-photo-1820567.jpeg',
              title: 'Contact Us',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ContactUsPage()),
                );
              },
            ),
            ItemCard(
              imageUrl:
                  'https://images.pexels.com/photos/258764/pexels-photo-258764.jpeg',
              title: 'News',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewsPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final VoidCallback onTap;

  ItemCard({
    required this.imageUrl,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.8,
        child: Card(
          clipBehavior: Clip.hardEdge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Set image size to 200x200
              SizedBox(
                height: 200,
                width: 120,
                child: Image.network(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 10),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
