import 'package:flutter/material.dart';
class FullImageView extends StatefulWidget {
  String imageurl;
  FullImageView(this.imageurl,{Key? key}):super(key: key);

  @override
  State<FullImageView> createState() => _FullImageViewState();
}

class _FullImageViewState extends State<FullImageView> {
  final _transformationController = TransformationController();
  late TapDownDetails _doubleTapDetails;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(children: [

            Expanded(
              child: GestureDetector(
                onDoubleTapDown: _handleDoubleTapDown,
                onDoubleTap: _handleDoubleTap,
                child: InteractiveViewer(
                  transformationController: _transformationController,

                  child: Hero(
                      tag: 'image',
                      child: Image.network(widget.imageurl)),
                ),
              ),
            )
          ]),
        ));
  }
  void _handleDoubleTapDown(TapDownDetails details) {
    _doubleTapDetails = details;
  }
  void _handleDoubleTap() {
    if (_transformationController.value != Matrix4.identity()) {
      _transformationController.value = Matrix4.identity();
    } else {
      final position = _doubleTapDetails.localPosition;
      // For a 3x zoom
      _transformationController.value = Matrix4.identity()
        ..translate(-position.dx * 2, -position.dy * 2)
        ..scale(3.0);
      // Fox a 2x zoom
      // ..translate(-position.dx, -position.dy)
      // ..scale(2.0);
    }
  }
}
