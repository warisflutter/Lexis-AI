import 'package:flutter/material.dart';


class BottomNav extends StatelessWidget {


  final int selectedIndex;

  final Function(int) onTap;


  const BottomNav({

    super.key,

    required this.selectedIndex,

    required this.onTap,

  });



  @override
  Widget build(BuildContext context) {


    return Container(

      height: 65,


      decoration: const BoxDecoration(

        color: Color(0xff22142C),


        borderRadius: BorderRadius.only(

          topLeft: Radius.circular(15),

          topRight: Radius.circular(15),

        ),
      ),



      child: Row(

        mainAxisAlignment: MainAxisAlignment.spaceAround,


        children: [


          _item(Icons.dashboard,"Dashboard",0),

          _item(Icons.search,"Search",1),

          _item(Icons.folder,"Cases",2),

          _item(Icons.chat,"Chat",3),

          _item(Icons.person,"Profile",4),


        ],
      ),
    );
  }



  Widget _item(IconData icon,String text,int index){


    bool active = selectedIndex == index;



    return InkWell(


      onTap: (){

        onTap(index);

      },


      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,


        children: [


          Icon(

            icon,

            color: active
                ? Colors.purpleAccent
                : Colors.grey,

          ),



          Text(

            text,

            style: TextStyle(

              fontSize: 10,

              color: active
                  ? Colors.purpleAccent
                  : Colors.grey,

            ),
          )

        ],
      ),
    );

  }


}