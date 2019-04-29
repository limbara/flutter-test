import 'package:flutter/material.dart';
import './ProfilePicture.dart';

class ProfileStory extends StatefulWidget {
  final String imageUrl;
  final String initial;

  ProfileStory({
    this.imageUrl = '',
    this.initial = ''
  });

  @override
  State<StatefulWidget> createState() {
    return _ProfileStoryState();
  }
}

class _ProfileStoryState extends State<ProfileStory> with SingleTickerProviderStateMixin {
  AnimationController animationController;
  Animation<Color> borderColor;

  bool isLoading = false;

  void onTap() {
    setState(() {
      isLoading = !isLoading;    
    });

    if(isLoading) {
      this.playAnimation();
    } else {
      this.stopAnimation();
    }
  }

  @override
  void initState() {
    super.initState();
    this.initAnimation();
  }
  
  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: this.onTap,
      child: getAnimatedWidget(),
    );
  }

  Widget getAnimatedWidget() {
    return AnimatedBuilder(
      animation: animationController,
      builder: (context, builder) {
        return Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isLoading ? borderColor.value : Colors.black,
              width: 2,
            )
          ),
          child: ProfilePicture(
            imageUrl: widget.imageUrl,
            initial: widget.initial,
          ),
        );
      },
    );  
  }

  void playAnimation() {
    animationController.forward();
  }

  void stopAnimation() {
    animationController.stop(canceled: true);    
    animationController.reset();
  }

  void initAnimation() {
    animationController = AnimationController(
      duration: Duration(
        milliseconds: 300
      ),
      vsync: this
    );
    borderColor = ColorTween(
      begin: Colors.white,
      end: Colors.deepPurpleAccent
    ).animate(
      new CurvedAnimation(
        parent: animationController,
        curve: Curves.linear,
      )
    );
    animationController.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        animationController.reverse();
      }
      else if (status == AnimationStatus.dismissed) {
        animationController.forward();
      }
    });
  }
}