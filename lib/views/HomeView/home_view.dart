import 'package:flutter/material.dart';
import 'package:whats_app/views/MessageScreen/message_screen.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Map> chatList = [
    {
      'name': 'MDJRANIK',
      'image':
          "https://media.licdn.com/dms/image/C5603AQEa5Cv0_uZTew/profile-displayphoto-shrink_800_800/0/1659213924030?e=2147483647&v=beta&t=xQAKNK_UjeU2fBlQi74i4KVKCokASOD6xlQeI3Qm31c",
      'last_msg': 'tmi kmn aco are ki.. how are you',
      'time': '04.10AM',
      'count': '0',
    },
    {
      'name': 'Sakib ALL Hasn',
      'image':
          "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_640,q_50/lsci/db/PICTURES/CMS/316500/316581.png",
      'last_msg': 'valo ace vaiya, ',
      'time': '01.10AM',
      'count': '2',
    },
    {
      'name': 'MDJRANIK',
      'image':
      "https://media.licdn.com/dms/image/C5603AQEa5Cv0_uZTew/profile-displayphoto-shrink_800_800/0/1659213924030?e=2147483647&v=beta&t=xQAKNK_UjeU2fBlQi74i4KVKCokASOD6xlQeI3Qm31c",
      'last_msg': 'Hellow how are you',
      'time': '04.10AM',
      'count': '0',
    },
    {
      'name': 'Sakib ALL Hasn',
      'image':
      "https://img1.hscicdn.com/image/upload/f_auto,t_ds_square_w_640,q_50/lsci/db/PICTURES/CMS/316500/316581.png",
      'last_msg': 'khela kobe vai, ',
      'time': '01.10AM',
      'count': '9',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xFF075E55),
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.white.withOpacity(0.7),
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white.withOpacity(0.7),
                )),
          ],
          bottom: TabBar(
              unselectedLabelColor: Colors.white.withOpacity(0.5),
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                const Tab(
                  icon: Icon(
                    Icons.camera_alt_rounded,
                  ),
                ),
                const Tab(
                  text: 'CHATS',
                ),
                const Tab(
                  text: 'STATUS',
                ),
                const Tab(
                  text: 'CALLS',
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            const Text('first one'),
            ListView.builder(
                itemCount: chatList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen(
                                name: chatList[index]['name'],
                                image: chatList[index]['image'],
                            )));
                            //Navigator.push(context, MaterialPageRoute(builder: (context)=> MessageScreen()));
                          },
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(chatList[index]['image']),
                    ),
                    title: Text(chatList[index]['name']),
                    subtitle: Text(chatList[index]['last_msg']),
                    trailing: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                         Text(chatList[index]['time'],
                            style: TextStyle(
                            color:chatList[index]['count']==0 ?Colors.black :  Color(0xFF10CE63),
                              fontSize: 14,
                            )),
                        Container(
                          width: 20,
                          height: 20,
                          decoration: const BoxDecoration(
                              color: Color(0xFF10CE63), shape: BoxShape.circle),
                          child:  Center(
                              child: Text(
                                 chatList[index]['count'].toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          )),
                        )
                      ],
                    ),
                  );
                }),
            const Text('third page'),
            const Text('4tha page'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: const Color(0xFF075E55),
          onPressed: () {},
          child: const Icon(
            Icons.message,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
