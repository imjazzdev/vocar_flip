import 'package:flutter/material.dart';
import 'package:vocar_flip/views/k3lh/slide_1.dart';
import 'package:vocar_flip/views/pariwisata/ar_pariwisata.dart';
import 'package:vocar_flip/views/pariwisata/slide_1.dart';
import 'package:vocar_flip/views/tkb/ar_tkb.dart';
import 'package:vocar_flip/views/tkb/slide_1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          SizedBox(
            height: double.maxFinite,
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'FLIPBOOK &\nAUGMENTED REALITY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => K3lhSlide1(),
                          ));
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //     SnackBar(content: Text('In development')));
                    },
                    child: Image.asset('assets/image/icon-menu-k3lh-umum.png')),
                const SizedBox(
                  height: 0,
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => TKBSlide1(),
                            ));
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(content: Text('In development')));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 23),
                        child: Image.asset(
                            'assets/image/icon-menu-flipbook-tkb.png'),
                      ),
                    ),
                    Positioned(
                      right: 37,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ArTKB(),
                              ));
                        },
                        child: Image.asset(
                          'assets/image/icon-ar.png',
                          height: 45,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PariwisataSlide1(),
                            ));
                        // ScaffoldMessenger.of(context).showSnackBar(
                        //     SnackBar(content: Text('In development')));
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Image.asset(
                            'assets/image/icon-menu-flipbook-pariwisata.png'),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ArPariwisata(),
                              ));
                        },
                        child: Image.asset(
                          'assets/image/icon-ar.png',
                          height: 45,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 30, right: 30),
                  child: Text(
                    'Klik menu Flipbook sesuai dengan program keahlian anda, maka tampilan akan langsung pada materi flipbook sesuai yang anda pilih.',
                    style: TextStyle(fontSize: 12),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
                  child: Row(
                    children: [
                      const Text(
                        'Klik tombol',
                        style: TextStyle(fontSize: 12),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, right: 5),
                        child: Image.asset(
                          'assets/image/icon-ar.png',
                          height: 23,
                        ),
                      ),
                      const Text(
                        'berikut untuk menampilkan',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    left: 30,
                    right: 30,
                  ),
                  child: Text(
                    'augmented reality (AR) sesuai materi program keahlian anda.',
                    style: TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
