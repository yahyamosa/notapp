import 'package:flutter/material.dart';

class notpage extends StatelessWidget {
  const notpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){} ,
          child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20 , right: 20),
        child: Column(
          children: [
            // appbar
            Padding(
              padding: const EdgeInsets.only(top: 35),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Notes" ,style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold), ),
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey[700],
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Icon(Icons.search),
                  )
                ],
              ),
            ),

            Expanded(
              child: ListView.builder(
                  itemCount: 10,
                  itemBuilder:(context , index){
                return Padding(
                  padding: const EdgeInsets.only(bottom: 12),
                  child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20, left: 16 , right: 16 ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Flutter Tips" , style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold , color: Colors.black),),
                             IconButton(onPressed:(){
                               ScaffoldMessenger.of(context).showSnackBar(SnackBar(content:Text("deleat secsses")));
                             }, icon : Icon(Icons.delete , color: Colors.black,))
                            ],
                          ),
                       //   SizedBox(height: 10,),
                          Text("Build youre create whit \n yahya mosa" , style: TextStyle(color: Colors.grey[600] , fontSize: 14),),
                          SizedBox(height: 60,),
                          Align(
                              alignment: Alignment.bottomRight,
                              child: Text("May 2/2022" , style: TextStyle(color: Colors.grey[600]),))
                        ],
                      ),
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
