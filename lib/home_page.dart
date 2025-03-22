import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool text= true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Center(
          child: Text("TextFeildsDemo",
            style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  TextField(
                    // textInputAction: TextInputAction.search,
                    // keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(color:Colors.yellowAccent,width: 10)
                        )
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("Password",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText:text,
                    decoration: InputDecoration(
                      suffixIcon:InkWell(onTap: (){
                        text=!text;
                        setState(() {7
                        });
                      },
                          child: text? Icon(Icons.visibility):Icon(Icons.visibility_off)),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color:Colors.yellowAccent,width: 10
                        ),
        
        
                      )
                    ),
                  ),
                  Text("Father's Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color:Colors.yellowAccent,width: 10
                        )
                      )
                    ),
                  ),
                  Text("Mother's Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                                color:Colors.yellowAccent,width: 10
                            )
                        )
                    ),
                  ),
                  Text("Address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 20,
                  ),
                TextField(
                  maxLines: 6,
                  decoration: InputDecoration(
                    hintText: "Address",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                          color:Colors.yellowAccent,width: 10
                      ),
                    )
                  ),
                ),
                  SizedBox(height: 20,),
                  TextButton(
        
                      onPressed: (){}, child: Text("Submit"))
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}
