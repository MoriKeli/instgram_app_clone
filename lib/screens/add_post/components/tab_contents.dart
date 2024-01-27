import 'package:flutter/material.dart';
import 'package:instagram_clone/models/search_results.dart';


class NewPostScreenTabContents extends StatelessWidget {
  const NewPostScreenTabContents({
    super.key,
    required TabController tabController,
  }) : _tabController = tabController;

  final TabController _tabController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: (searchResults.length * (MediaQuery.of(context).size.height * .18 + 4.0) / 3), // max height = (no. of images in the array * height of each image + margins) / 3 columns,
      child: TabBarView(
        controller: _tabController,
        children: [
          GalleryImages(),
          GalleryImages(),
          GalleryImages(),
    
        ],
      ),
    );
  }
}


class GalleryImages extends StatelessWidget {
  const GalleryImages({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Wrap(
        children: List.generate(
          searchResults.length,
          (index) => Column(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: 2.0, vertical: 2.0),
                child: Image.asset(
                  searchResults[index].imagePath,
                  fit: BoxFit.cover,
                  height: MediaQuery.of(context).size.height *
                      .18, // height of each image (screen height x 0.18)
                  width: MediaQuery.of(context).size.width *
                      .32, // width of each image (screen width x 0.32)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
