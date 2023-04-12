import 'package:flutter/material.dart';

class ButtonLearnView extends StatelessWidget {
  const ButtonLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children:[
          TextButton(
              onPressed: (){},
              style:ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith((states){
                   if(states.contains(MaterialState.pressed)){
                     return Colors.green;
                   }
                   return Colors.red;
                  }
                ),
              ),
              child: Text("Click",style: Theme.of(context).textTheme.subtitle1,),         
          ),
          ElevatedButton(
              onPressed: (){},
              child: Text("Click 2 "),
          ),
          IconButton(
              onPressed: (){},
              icon: const Icon(Icons.add_box),
          ),
          FloatingActionButton(
              onPressed: (){},
              child: Icon(Icons.add),
          ),
          OutlinedButton(
              onPressed: (){},
              child: Text("click 3"),
          ),
          InkWell(
           onTap: (){},
           child: Text("Custom"),
          ),
          Container(
            height: 200,
            color: Colors.white,
          ),
          ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))
                  ),
              ),
              child:  Padding(
                padding: const EdgeInsets.only(top: 10,bottom: 10,right: 40,left: 40),
                child: Text(
                  "Place Bid",
                  style: Theme.of(context).textTheme.headlineMedium?.merge(TextStyle(color: Colors.white)),
                ),
              ),
          ),
        ],
      ),
    );
  }
}
