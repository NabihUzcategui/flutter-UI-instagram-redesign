import 'package:flutter/material.dart';
import 'package:flutter_instagram_redesign/tabs/feed_view.dart';
import 'package:flutter_instagram_redesign/tabs/reels_view.dart';
import 'package:flutter_instagram_redesign/tabs/tagged_view.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final List<Widget> tabs = [
    const Icon(
      Icons.image,
      color: Colors.grey,
    ),
    const Icon(
      Icons.video_collection,
      color: Colors.grey,
    ),
    const Icon(
      Icons.bookmark,
      color: Colors.grey,
    ),
  ];

  final List<Widget> tabBarViews = const [
    FeedView(),
    ReelsView(),
    TaggedView(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          body: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              //profile detail
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //following
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '354',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Following',
                        style: TextStyle(color: Colors.grey),
                      )
                    ],
                  ),

                  //profile pic
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Container(
                      width: 100.0,
                      height: 100.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.grey[300],
                      ),
                    ),
                  ),

                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '21.2K',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text('Followers', style: TextStyle(color: Colors.grey)),
                    ],
                  )
                ],
              ),

              const SizedBox(
                height: 20.0,
              ),
              //name
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nabih Uzcategui',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    ' | ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                  Text(
                    'Developer',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ],
              ),

              const SizedBox(
                height: 10.0,
              ),

              //bio
              Text(
                'Flutter Developer - Programmer - UI Designer',
                style: TextStyle(
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(
                height: 5.0,
              ),
              //link
              Text(
                'www.nabihu.com',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.blue[600]),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20.0,
              ),

              //buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                          child: Text('Edit Profile'),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        child: const Center(
                          child: Text(
                            'Contact',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 20.0,
              ),
              //tab bar
              TabBar(
                tabs: tabs,
              ),

              //tab bar view
              SizedBox(
                height: 1275,
                child: TabBarView(
                  children: tabBarViews,
                ),
              ),
            ],
          ),
        ));
  }
}
