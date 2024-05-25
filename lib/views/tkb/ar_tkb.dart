import 'package:flutter/material.dart';

import '../../utils/data.dart';
import '../detail_ar.dart';

class ArTKB extends StatelessWidget {
  const ArTKB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        children: [
          SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Image.asset('assets/image/background.png',
                fit: BoxFit.cover, opacity: const AlwaysStoppedAnimation(.6)),
          ),
          GridView.builder(
              padding: const EdgeInsets.only(bottom: 20, top: 20),
              itemCount: Data.data_ar_tkb.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailARPage(
                                sourceImg3D: Data.data_ar_tkb[index]['3d_src']
                                    .toString()),
                          ));
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                            height: 150,
                            width: 150,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.blue.withOpacity(0.2),
                                    spreadRadius: 5,
                                    blurRadius: 7,
                                    offset: const Offset(
                                        0, 3), // changes position of shadow
                                  ),
                                ],
                                borderRadius: BorderRadius.circular(10)),
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  Data.data_ar_tkb[index]['img_src'].toString(),
                                  fit: BoxFit.cover,
                                ))),
                        Container(
                          height: 40,
                          width: 150,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.6),
                              borderRadius: const BorderRadius.vertical(
                                  bottom: Radius.circular(10))),
                          child: Text(
                            Data.data_ar_tkb[index]['title'].toString(),
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: Colors.white,
                                height: 1,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ))
        ],
      )),
    );
  }
}
