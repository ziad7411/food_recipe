import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:food_recipe/constants/my_colors.dart';
import 'package:food_recipe/data/models/meals.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class RecipeDetailsScreen extends StatelessWidget {

String getYouTubeVideoId(String url) {
  final Uri uri = Uri.parse(url);
  if (uri.host.contains('youtu.be')) {
    return uri.pathSegments.first;
  } else if (uri.host.contains('youtube.com')) {
    return uri.queryParameters['v'] ?? '';
  }
  return '';
}

  final Meals meals;
  const RecipeDetailsScreen({super.key, required this.meals});
  Widget buildSliverAppBar(BuildContext context){
    return SliverAppBar(
      expandedHeight: 400,
      pinned: false,
      stretch: true,
      backgroundColor: MyColors.myDarkGray,
      automaticallyImplyLeading: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          children: [
            Hero(
              tag: meals.idMeal,
              child: Image.network(
                meals.image,
                fit: BoxFit.cover,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
            Positioned(
              top: 40,
              left: 16,
              child: GestureDetector(
                onTap: () => Navigator.of(context).pop(),
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.5),
                  child: Icon(Icons.arrow_back, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

   Future<void> _launchYouTube(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Could not launch $url';
    }
  }

 /* Widget youtubeLunch(String title, String url) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: title,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          TextSpan(
            text: url,
            style: const TextStyle(
              color: Colors.blue,
              fontSize: 16,
              decoration: TextDecoration.underline,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => _launchYouTube(url),
          ),
        ],
      ),
    );
  }*/
  Widget youtubeLunch(String title, String url) {
  final videoId = getYouTubeVideoId(url);

  if (videoId.isNotEmpty) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        SizedBox(height: 10),
        YoutubePlayerBuilder(
          player: YoutubePlayer(
            controller: YoutubePlayerController(
              initialVideoId: videoId,
              flags: const YoutubePlayerFlags(
                autoPlay: false,
                mute: false,
              ),
            ),
          ),
          builder: (context, player) => player,
        ),
      ],
    );
  } else {
    // Fallback for invalid or non-YouTube URLs
    return Text(
      'Invalid or no YouTube link provided',
      style: TextStyle(color: Colors.red),
    );
  }
}

Widget recipeInfo(String title, String value){
  return RichText(text: TextSpan(
    children: [
      TextSpan(
        text: title,
        style: TextStyle(
          color: MyColors.myWhite,
          fontWeight: FontWeight.bold,
          fontSize: 18,

        )
      ),
      TextSpan(
        text: value,
        style: TextStyle(
          color: MyColors.myWhite,
          fontSize: 16,
          
        )
      )
    ]
  ) );
}
Widget buildDevider(){
  return Divider(
    height: 30,
    color: MyColors.myBlack,
    thickness: 2,
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.myDarkGray,
      body: Padding(
        padding: const EdgeInsets.only(top: 25),
        child: CustomScrollView(
          slivers: [
            buildSliverAppBar(context),
            SliverList(delegate: SliverChildListDelegate(
              [
                Container(
                  margin: EdgeInsets.fromLTRB(14, 14, 14, 8),
                  padding: EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                        recipeInfo("Name : " , meals.strMeal),
                        buildDevider(),
                        recipeInfo("Category : " , meals.strCategory),
                        buildDevider(),
                        recipeInfo("Area : " , meals.strArea),
                        buildDevider(),
                        recipeInfo("Instructions : " , meals.strInstructions),
                        buildDevider(),
                        youtubeLunch("Watch on YouTube:", meals.strYoutube),
                        buildDevider()


                    ],
                  ),
                ),
                SizedBox(height: 300,)
              ]
            ))
          ],
        ),
      ),
    );
  }
}