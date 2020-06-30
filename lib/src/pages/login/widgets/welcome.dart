import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Welcome extends StatelessWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: AspectRatio(
          aspectRatio: 16 / 9,
          child: LayoutBuilder(
            builder: (_, constraints) {
              return Container(
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: constraints.maxHeight*0.7,
                      child: Column(
                        children: <Widget>[
                          Container(
                          height: 1,
                          width: constraints.maxWidth,
                          color: Colors.grey,
                        ),
                        SizedBox(height: 20,),
                        Text('Welcome Back!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))
                        ],
                         
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight*0.30,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset(
                        'assets/svg_1.svg',
                        height: constraints.maxHeight*0.4,
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight*0.23,
                      child: SvgPicture.asset(
                        'assets/svg_2.svg',
                        width: constraints.maxWidth * 0.35,
                      ),
                    ),
                    Positioned(
                      top: constraints.maxHeight*0.36,
                      right: 5,
                      child: SvgPicture.asset(
                        'assets/svg_3.svg',
                        width: constraints.maxWidth * 0.35,
                      ),
                    ),
                  ],
                ),
              );
            },
          )),
    );
  }
}
