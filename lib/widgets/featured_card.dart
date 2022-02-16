import 'package:flutter/material.dart';

class SocialPictureGroup extends StatelessWidget {
  const SocialPictureGroup({
    Key? key,
    required this.imgUrl,
    required this.title,
    required this.color,
    required this.onTap,
    this.width = 400,
  }) : super(key: key);

  final String imgUrl;
  final String title;
  final Color color;
  final Function onTap;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            onTap();
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 100,
                  child: Image.network(
                    imgUrl,
                    fit: BoxFit.fitWidth,
                  ),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(22)),
                    // color: Colors.red
                  ),
                  clipBehavior: Clip.antiAlias,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Container(
                      width: 290,
                      height: 100,
                      child: LikeListTile(
                        title: "Andre Hirata",
                        likes: "130",
                        subtitle: "103 Reviews",
                        color: color,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LikeListTile extends StatelessWidget {
  const LikeListTile(
      {Key? key,
      required this.title,
      required this.likes,
      required this.subtitle,
      this.color = Colors.grey})
      : super(key: key);
  final String title;
  final String likes;
  final String subtitle;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Container(
        width: 50,
        child: AspectRatio(
          aspectRatio: 1,
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://profilemagazine.com/wp-content/uploads/2020/04/Ajmere-Dale-Square-thumbnail.jpg"))),
          ),
        ),
      ),
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(Icons.favorite, color: Colors.orange, size: 15),
          SizedBox(width: 2),
          Text(likes),
          Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey,
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(width: 4, height: 4),
              )),
          Text(subtitle)
        ],
      ),
      trailing: LikeButton(onPressed: () {}, color: Colors.orange),
    );
  }
}

class LikeButton extends StatefulWidget {
  const LikeButton(
      {Key? key, required this.onPressed, this.color = Colors.black12})
      : super(key: key);
  final Function onPressed;
  final Color color;
  @override
  _LikeButtonState createState() => _LikeButtonState();
}

class _LikeButtonState extends State<LikeButton> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: IconButton(
      icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border,
          color: widget.color),
      onPressed: () {
        setState(() {
          isLiked = !isLiked;
        });
        widget.onPressed();
      },
    ));
  }
}
