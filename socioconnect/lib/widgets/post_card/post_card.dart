import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  const PostCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      elevation: 3,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // User Info Row
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcTMV_r5OZUovs6GJ3-2PhnnoMwN3_EbNy4g&s",
                  ),
                ),
                const SizedBox(width: 12),
                Text(
                  "Tanu Grewal",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                Spacer(),
                Icon(Icons.more_vert),
              ],
            ),
          ),

          // Post Image
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTfxZF5VWncWLLn6xkJyb_Bvzj65nORNzFE8lPGEWN4is12NOCyGHRLfXpuWuI8GBMrSOM&usqp=CAU",
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
          ),

          // Action Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: Row(
              children: [
                Icon(Icons.favorite_border, size: 28),
                SizedBox(width: 16),
                Icon(Icons.chat_bubble_outline, size: 26),
                SizedBox(width: 16),
                Icon(Icons.send_outlined, size: 26),
                Spacer(),
                Icon(Icons.bookmark_border, size: 26),
              ],
            ),
          ),

          // Likes and Caption
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "1,024 likes",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Tanu Grewal ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextSpan(
                        text: "Exploring the vibes 🌿✨",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          )
        ],
      ),
    );
  }
}
