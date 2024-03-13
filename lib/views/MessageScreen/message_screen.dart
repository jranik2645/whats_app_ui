
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatefulWidget {
   final String name;
   final String image;
  const MessageScreen({super.key, required this.name, required this.image, });

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {

      List<Map> chatDetails=[
        {
           'message':'hellow how are you',
            'is_me':true,
            'time':'0.3:00PM'
        },
        {
          'message':'hellow how are you',
          'is_me':false,
          'time':'0.3:00PM'
        },
        {
          'message':'hellow how are you',
          'is_me':true,
          'time':'0.3:00PM'
        },
        {
          'message':'hellow how are you',
          'is_me':false,
          'time':'0.3:00PM'
        },
        {
          'message':'hellow how are you',
          'is_me':true,
          'time':'0.3:00PM'
        },
        {
          'message':'hellow how are you',
          'is_me':false,
          'time':'0.3:00PM'
        },
      ];


  @override
  Widget build(BuildContext context) {
    return Scaffold (

         appBar:  AppBar(
        backgroundColor: Color(0xFF075E55),
          leading: IconButton(onPressed: () {
             Navigator. pop(context);
          },
            icon: Icon(
               Icons.arrow_back,
              color: Colors.white,
            ),),
          title: Expanded(
             child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                   backgroundImage:NetworkImage(widget.image),
                ),
               title: Text(
                  widget.name,
                   style: TextStyle(
                     color: Colors.white,
                   ),
               ),
                subtitle: Text(
                   'Last seen 07:00 PM',
                  style: TextStyle(
                     color: Colors.white.withOpacity(0.5),
                  ),
                ),
                trailing: Icon(
                   Icons.more_vert,
                   color:Colors.white,
                ),
             ),
          ),
         ),
        body:Column(
           children: [
             Expanded(
               child: ListView.builder(
                   itemCount: chatDetails.length,
                   padding: EdgeInsets.all(15),
                   itemBuilder: (context,index){
                     final data= chatDetails[index];
                     return Column(
                       crossAxisAlignment:data['is_me'] ==true?CrossAxisAlignment.end :CrossAxisAlignment.start,
                       children: [
                         Column(
                           mainAxisSize: MainAxisSize.min,
                           children: [
                             Container(

                               margin: EdgeInsets.symmetric(
                                 vertical: 5,
                               ),
                               padding: EdgeInsets.symmetric(
                                   vertical: 10
                               ),
                               constraints: BoxConstraints(
                                   maxWidth: 200
                               ),
                               decoration: BoxDecoration(
                                   color:data['is_me']==true ?Colors.black: Color(0xFF075E55),
                                   borderRadius: BorderRadius.only(
                                     topRight: Radius.circular(20),
                                     topLeft: Radius.circular(20),
                                     //bottomLeft: Radius.circular(20),
                                     bottomRight: Radius.circular(20),
                                   )
                               ),
                               child: Text(data['message'],style: TextStyle(
                                 color: Colors.white,
                               ),),
                             ),
                             Text(data['time']),
                           ],
                         ),

                       ],
                     );
                   }),
             ),
               Padding(padding: EdgeInsets.all(10.0),
               child: Row(
                  children: [
                     Expanded(child:Container(

                       height: 60,
                        padding: EdgeInsets.symmetric(
                           horizontal: 10
                        ),
                       decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(40),

                       ),
                         child: TextFormField(
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.emoji_emotions_outlined),
                               hintText: 'Enter your  message',
                               border: InputBorder.none,
                              suffixIcon: Icon(Icons.link),

                            ),

                         ),
                     )),
                     SizedBox(
                        width: 10,
                     ),
                     CircleAvatar(
                       backgroundColor: Color(0xFF075E55),
                       child: Icon(Icons.send, color: Colors.white,),
                     )
                  ],
               ),
                  
               
               )
           ],
        )

    );
  }
}
