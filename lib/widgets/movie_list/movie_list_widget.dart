import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themoviedb/resources/resources.dart';

class MovieListWidget extends StatelessWidget {
  const MovieListWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemExtent: 163,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: Container(
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(color: Colors.black.withOpacity(0.2)),
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  offset: Offset(2, 2),
                  blurRadius: 8,
                ),
              ],
            ),
            child: Row(
              children: [
                // Image(image: AssetImage(AppImages.vechnie),),
                Image.asset(AppImages.vechnie),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Название фильма',
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Дата премьеры',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Описание'),
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
