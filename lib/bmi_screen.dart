import 'package:flutter/material.dart';

class bmiScreen extends StatefulWidget {
  const bmiScreen({super.key});

  @override
  State<bmiScreen> createState() => _bmiScreenState();
}

class _bmiScreenState extends State<bmiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  const Color.fromARGB(255, 19, 20, 57),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 5, 9, 79),
        title: Text("Bmi Calcolator" , style: TextStyle(color: Colors.white , fontSize: 25,),),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [

            Expanded(child: Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Expanded(child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color:const Color.fromARGB(255, 5, 9, 79),
                    ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.male,size: 100,color: Colors.white,),
                    Text("Male" ,style: TextStyle(color: Colors.white, fontSize:25 ,)),
                  ],
                  ),
                  )
                  ),

                  SizedBox(width: 10,),

                  Expanded(child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color.fromARGB(255, 5, 9, 79),
                    ),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Icon(Icons.female,size: 100,color: Colors.white,),
                    Text("female" ,style: TextStyle(color: Colors.white, fontSize:25 ,)),
                  ],
                  ),
                  )
                  ),
                ],
              ),
            )
            ),
        
        
            Expanded(child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 5, 9, 79),
              ),
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Height" ,style: TextStyle(color: Colors.white, fontSize:25 , fontWeight: FontWeight.bold ,)),
                  Text("180" ,style: TextStyle(color: Colors.white, fontSize:30 ,)),
                  Slider(min:70, max:230, value:150, onChanged:  (value){}) 
                ],
              ),
            )),
        
        
            Expanded(child: Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                children: [
                  Expanded(child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(color: const Color.fromARGB(255, 5, 9, 79), borderRadius:BorderRadius.circular(10) ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text("Waight", style: TextStyle(color: Colors.white , fontSize:20 ,)),
                          Text("75", style: TextStyle(color: Colors.white , fontSize:30 ,)),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: IconButton(color: Colors.white, onPressed: (){}, icon: Icon (Icons.remove))),
                                SizedBox(width:10 ,),
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: IconButton(color: Colors.white, onPressed: (){}, icon: Icon (Icons.add))),
                            ]
                          ),
                      ],
                    ),
                  )
                  ),

                    SizedBox(width: 10,),

                  Expanded(child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 5, 9, 79), borderRadius:BorderRadius.circular(10) ),
                        child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                          Text("Age", style: TextStyle(color: Colors.white , fontSize:20 ,)),
                          Text("20", style: TextStyle(color: Colors.white , fontSize:30 ,)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: IconButton(color: Colors.white, onPressed: (){}, icon: Icon (Icons.remove))),
                                SizedBox(width:10 ,),
                              CircleAvatar(
                                backgroundColor: Colors.blue,
                                child: IconButton(color: Colors.white, onPressed: (){}, icon: Icon (Icons.add))),
                            ]
                          ),
                      ],
                    ),
                  )
                  ),
                ],
              ),
            )
            ),
        
            
            MaterialButton(
              height: 60,
              color:    Colors.red ,
              minWidth: double.infinity,
              onPressed:(){},
            child: Text("calcolate", style: TextStyle(color: Colors.white,fontSize:25 ,) 
            ),
            ),
          ],
        ),
      ) 
    );
  }
}