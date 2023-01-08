import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leadingWidth: 0,
        title: Row(mainAxisAlignment: MainAxisAlignment.start, children: const [
          CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(
                  "https://thumbs.dreamstime.com/b/young-woman-avatar-cartoon-character-profile-picture-young-brunette-woman-short-hair-avatar-cartoon-character-vector-149728784.jpg")),
          SizedBox(width: 10),
          Text(
            "Chats",
            style: TextStyle(color: Colors.black),
          )
        ]),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.camera_alt,
                  size: 16,
                  color: Colors.white,
                )),
          ),
          const SizedBox(width: 10),
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 15,
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.edit,
                  size: 16,
                  color: Colors.white,
                )),
          ),
          const SizedBox(width: 10),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 50,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey[300],
                    shape: BoxShape.rectangle),
                child: Row(children: const [
                  Icon(
                    Icons.search,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Search",
                  )
                ]),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 100,
                child: Expanded(
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) => StoryItem(),
                    itemCount: 10,
                    separatorBuilder: (context, index) =>
                        const SizedBox(width: 5),
                  ),
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) => ChatListTile(),
                itemCount: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget StoryItem() => SizedBox(
      width: 70,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: const [
              CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(
                      "https://thumbs.dreamstime.com/b/young-woman-avatar-cartoon-character-profile-picture-young-brunette-woman-short-hair-avatar-cartoon-character-vector-149728784.jpg")),
              Padding(
                padding: EdgeInsetsDirectional.only(bottom: 3, top: 5),
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 6,
                ),
              )
            ],
          ),
          const SizedBox(height: 5),
          const Text(
            "Username",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );

Widget ChatListTile() => ListTile(
      contentPadding: const EdgeInsets.only(left: 0),
      leading: Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: const [
          CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  "https://thumbs.dreamstime.com/b/young-woman-avatar-cartoon-character-profile-picture-young-brunette-woman-short-hair-avatar-cartoon-character-vector-149728784.jpg")),
          Padding(
            padding: EdgeInsetsDirectional.only(bottom: 3, top: 5),
            child: CircleAvatar(
              backgroundColor: Colors.green,
              radius: 6,
            ),
          )
        ],
      ),
      title: const Text(
        "Username",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      subtitle: const Text(
        "Message 11:11 am",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      trailing: const Icon(
        Icons.circle,
        size: 15,
        color: Colors.blue,
      ),
    );
