// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class messenger_screen extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(

      backgroundColor: Colors.white,

      appBar:AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 20.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-15/296432460_447899970558632_1914898007882865291_n.webp?stp=dst-jpg_e35&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=108&_nc_ohc=ML-MXf9wja8AX94rkWk&tn=SR4Of08FaT7DJQgE&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=Mjg5NDgyNDY1MzUyMTc5Mzg1OA%3D%3D.2-ccb7-5&oh=00_AT9LXOfHB0LOvu4vs79aG40q3icTkiaWotOpKAPNeW75GA&oe=62F147C3&_nc_sid=30a2ef'
              ),
            ),
            SizedBox(
              width: 15.0,
            ),
            Text('Chats',
              style: TextStyle(
                fontSize: 30.0,
                color: Colors.black,
              ),
            ), //chats
          ],
        ),
        actions: [
          IconButton(onPressed: (){}, icon: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          )
          ),// camera icon
          IconButton(onPressed: (){}, icon: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.blue,
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
          )
          ), //edit icon
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
            [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0) ,
                  color: Colors.grey[400],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                   children:
                   [
                     Icon(
                       Icons.search,
                     ),
                     SizedBox(
                       width: 15.0,
                     ),
                     Text('Search'
                       ,),
                   ],
                  ),
                ),
              ),
              SizedBox(height: 10.0
              ),
              Container(
                height: 100.0,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder :  (context , index) => BildStoryIcon(),
                  itemCount: 1,
                ),
              ),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                 scrollDirection: Axis.vertical,
                  itemBuilder: (context,item) => BuildChatIcon(),
                  itemCount: 10,
              ),
            ],
          ),
        ),
      ),

    );
  }

  Widget BuildChatIcon() => Column(
    children: [
      SizedBox(height: 20.0
      ),
      Row(
        children:
        [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30.0,
                backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-15/269466780_1285159278650710_6357295213300325147_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=110&_nc_ohc=KE_VLD_DKgUAX8Bf374&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjczMjMzNTA0ODk1MjkwNjk2MA%3D%3D.2-ccb7-5&oh=00_AT_UsQQLMCbLurlr2pZXK_xd5RVzJR1b_Q9dwHjBCPqthA&oe=62F152E1&_nc_sid=30a2ef'
                ),


              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  bottom: 5.0,
                  end: 3.0,
                ),
                child: CircleAvatar(
                  radius: 7.0,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:
              [
                Text('Yosef Atef',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,

                  ),
                ),
                Row(
                  children:
                  [
                    Text('ماشي يعم '
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:20.0),
            child: Container(
              width: 8.0,
              height: 8.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.blue,
              ) ,
            ),
          ),
          Text('07:00 PM',
          ),

        ],
      ),
    ],
  );
  Widget BildStoryIcon() => Row(
    children: [
      Container(
        width: 60.0,
        child: Column(
          children:
          [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-15/269466780_1285159278650710_6357295213300325147_n.jpg?stp=dst-jpg_e35_p640x640_sh0.08&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=110&_nc_ohc=KE_VLD_DKgUAX8Bf374&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjczMjMzNTA0ODk1MjkwNjk2MA%3D%3D.2-ccb7-5&oh=00_AT_UsQQLMCbLurlr2pZXK_xd5RVzJR1b_Q9dwHjBCPqthA&oe=62F152E1&_nc_sid=30a2ef'
                  ),


                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ), // for story image
            SizedBox(
              height: 7.0,
            ),
            Text('Yosef Atef',
              maxLines:2,
              overflow: TextOverflow.ellipsis,

            ), // Yosef
          ],
        ),
      ), // for yosef
      SizedBox(
        width: 8.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children:
          [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-19/275516729_512769640368911_6375976337367293352_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=111&_nc_ohc=wnYgN36S9T8AX-Sd-Ds&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT8TLwLRct-7U3EG0udS7GUN0oercZIm1y2mLxZ_jMl1_w&oe=62F1EE7A&_nc_sid=8fd12b'
                  ),


                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ), // for story image
            SizedBox(
              height: 7.0,
            ),
            Text('Aliaa Atef ',
              maxLines:2,
              overflow: TextOverflow.ellipsis,

            ), // Yosef
          ],
        ),
      ), // for  aliaa
      SizedBox(
        width: 8.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children:
          [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-15/120745978_332232154552719_661463014930951726_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=103&_nc_ohc=uWepilBFZ54AX-Wny-V&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjQxNDA1MDc4MTQwNzAwMzIzMw%3D%3D.2-ccb7-5&oh=00_AT_hB6-O9ZXbbpHcQrRW_P5mflYxqgYn7JvkAoRxOsO1Aw&oe=62F19D7F&_nc_sid=30a2ef'
                  ),


                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ), // for story image
            SizedBox(
              height: 7.0,
            ),
            Text('Ahmed Atef ',
              overflow: TextOverflow.ellipsis,

            ), // Yosef
          ],
        ),
      ), // for  ahmed
      SizedBox(
        width: 8.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children:
          [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-19/106559472_2364382380525046_5923828638372238517_n.jpg?stp=dst-jpg_s320x320&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=110&_nc_ohc=WW0r3c8GNGoAX_H3P2j&edm=AOQ1c0wBAAAA&ccb=7-5&oh=00_AT_nH6xjktDNYf0ePMchDwXp-mf6SVvxZgxq6Z8OUcF0jQ&oe=62F248B5&_nc_sid=8fd12b'
                  ),


                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ), // for story image
            SizedBox(
              height: 7.0,
            ),
            Text('امال زقزوق ',
              overflow: TextOverflow.ellipsis,

            ), // Yosef
          ],
        ),
      ), // for mama
      SizedBox(
        width: 8.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children:
          [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://scontent.fcai20-5.fna.fbcdn.net/v/t1.6435-9/90315476_1077780855940831_3645488272848715776_n.jpg?_nc_cat=104&ccb=1-7&_nc_sid=174925&_nc_ohc=evRp9_jwutgAX8u9I7a&_nc_ht=scontent.fcai20-5.fna&oh=00_AT8C-Eit-n7jwfJF4gaTT5xgn1H3-VdYZAgqVMWspIuwdw&oe=6310C845'
                  ),


                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ), // for story image
            SizedBox(
              height: 7.0,
            ),
            Text('Atef Saady ',

              overflow: TextOverflow.ellipsis,

            ), // Yosef
          ],
        ),
      ), // for  baba
      SizedBox(
        width: 8.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children:
          [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-15/96761631_112080686968794_1899231849754249278_n.jpg?stp=dst-jpg_e35_s750x750_sh0.08&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=106&_nc_ohc=4VTTn7_zu0QAX8kW2Fp&tn=SR4Of08FaT7DJQgE&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MjMwNzAyNTkzNDk0NzIxMjA5OA%3D%3D.2-ccb7-5&oh=00_AT_gNXrMN2Dm2DNV55bThtiu6ZSn2UAFkgUJv-7DxYzkww&oe=62F0FDD4&_nc_sid=30a2ef'
                  ),


                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ), // for story image
            SizedBox(
              height: 7.0,
            ),
            Text('Yasmin Adel',
              maxLines:2,
              overflow: TextOverflow.ellipsis,

            ), // Yosef
          ],
        ),
      ), // for yasmin
      SizedBox(
        width: 8.0,
      ),
      Container(
        width: 60.0,
        child: Column(
          children:
          [
            Stack(
              alignment: AlignmentDirectional.bottomEnd,
              children: [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: NetworkImage('https://instagram.fcai20-5.fna.fbcdn.net/v/t51.2885-15/21041623_113690405982712_7687743270859833344_n.jpg?stp=dst-jpg_e35&_nc_ht=instagram.fcai20-5.fna.fbcdn.net&_nc_cat=104&_nc_ohc=WZKIfwLwumUAX92fyAB&edm=ALQROFkBAAAA&ccb=7-5&ig_cache_key=MTU4ODAzMTYzMjM4NzEzMjQ4Ng%3D%3D.2-ccb7-5&oh=00_AT8v3zmXyM1qzOfjztNpx0OtptYcEFuWFTi7YablSKDbHw&oe=62F15032&_nc_sid=30a2ef'
                  ),


                ),
                Padding(
                  padding: const EdgeInsetsDirectional.only(
                    bottom: 5.0,
                    end: 3.0,
                  ),
                  child: CircleAvatar(
                    radius: 7.0,
                    backgroundColor: Colors.green,
                  ),
                ),
              ],
            ), // for story image
            SizedBox(
              height: 7.0,
            ),
            Text('Family ',
              maxLines:2,
              overflow: TextOverflow.ellipsis,

            ), // Yosef
          ],
        ),
      ), // for family

    ],
  );
}





