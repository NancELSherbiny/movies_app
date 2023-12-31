import 'package:flutter/material.dart';

import '../../model/popularResponse.dart';
import '../../my_theme.dart';

class PopularItem extends StatelessWidget {
  PopularResult results;

  PopularItem({required this.results});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.network(
          'https://image.tmdb.org/t/p/w500' + results.backdropPath!,
        ),
        Container(
            height: MediaQuery.of(context).size.height * 0.20,
            alignment: Alignment.center,
            child: Icon(
              Icons.play_circle,
              color: MyTheme.white,
              size: 80,
              shadows: [Shadow(color: Colors.black)],
            )),
        Container(
            height: MediaQuery.of(context).size.height * 0.42,
            child: Padding(
              padding: const EdgeInsets.only(top: 40),
              child: Stack(
                children: [
                  Image.network(
                    'https://image.tmdb.org/t/p/w500' + results.posterPath!,
                  ),
                  Icon(
                    Icons.bookmark,
                    color: Colors.transparent,
                    size: 39,
                  ),
                  InkWell(
                    onTap: () {
                    },
                    child: Container(
                      width: 39,
                      height: 35,
                      child: Icon(
                        Icons.add,
                        color: MyTheme.white,
                        size: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )),
        Container(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.29,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 165),
                child: Text(
                  results.title ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: MyTheme.white),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 165),
                child: Text(
                  results.releaseDate ?? "",
                  style: Theme.of(context)
                      .textTheme
                      .titleSmall!
                      .copyWith(color: MyTheme.lightGrey),
                ),
              ),
              //
              //   ]),
              // ),
            ],
          ),
        ),
      ],
    );
  }
}
