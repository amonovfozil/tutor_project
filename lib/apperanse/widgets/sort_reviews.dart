// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:tutor/helper/style_text.dart';

//iniital value for start range and end range
class ReviewsSort extends StatefulWidget {
  final List reviews;
  const ReviewsSort({required this.reviews, super.key});

  @override
  State<ReviewsSort> createState() => _ReviewsSortState();
}

class _ReviewsSortState extends State<ReviewsSort> {
  bool init = true;
  int ReviewsIndex = 2;
  final List Reviews = [];

  void SeeMore() {
    setState(() {
      init = false;
    });
    if (ReviewsIndex == widget.reviews.length) {}
    if (ReviewsIndex < widget.reviews.length) {
      int End = ReviewsIndex < (widget.reviews.length - 4)
          ? ReviewsIndex + 4
          : widget.reviews.length;
      for (var i = ReviewsIndex; i < End; i++) {
        Reviews.add(widget.reviews[i]);
      }
      ReviewsIndex = widget.reviews.length < 6
          ? widget.reviews.length
          : ReviewsIndex < (widget.reviews.length - 4)
              ? ReviewsIndex + 4
              : widget.reviews.length;
    } else {
      Reviews.clear();
      for (var i = 0; i < 2; i++) {
        Reviews.add(widget.reviews[i]);
      }
      ReviewsIndex = 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (init) {
      for (var i = 0; i < 2; i++) {
        Reviews.add(widget.reviews[i]);
      }
    }
    return Column(
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: Reviews.map(
            (e) => Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(
                        backgroundColor: Colors.black,
                        backgroundImage: AssetImage(
                          'assets/images/avatar.png',
                        ),
                        radius: 23,
                      ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Text(
                          'Рафаэль Ройтман',
                          style: StylesText().style_1_1(16),
                        ),
                      ),
                      trailing: const Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_rate_rounded,
                            color: Color(0xFFF4B840),
                            size: 26,
                          ),
                          Icon(
                            Icons.star_border_rounded,
                            color: Color(0xFFF4B840),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: Text(
                        'Быстро нашел себе преподавателя. Отличная платформа',
                        style: StylesText().style_5_1(15),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ).toList(),
        ),
        const SizedBox(height: 10),
        Center(
          child: TextButton.icon(
              onPressed: SeeMore,
              icon: Icon(
                ReviewsIndex < widget.reviews.length
                    ? Icons.arrow_downward
                    : Icons.arrow_upward,
                color: const Color(0xFF686868),
              ),
              label: Text(
                ReviewsIndex < widget.reviews.length ? 'Смотреть ещё' : 'Bверх',
                style: StylesText().style_5_1(14),
              )),
        ),
      ],
    );
  }
}
