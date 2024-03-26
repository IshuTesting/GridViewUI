import 'package:flutter/material.dart';
import 'package:gesture_detector/product.dart';

void main() {
  runApp(ProductGrid());
}

/*class GestureDetector1 extends StatelessWidget {
  const GestureDetector1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                print('On Tap Happen');
              },
              onLongPress: () {
                print('On Long Press Happen');
              },
              child: Container(
                width: 150,
                height: 150,
                color: Colors.teal,
                child: Text('My Container23'),
              ),),
            SizedBox(height: 50),
            InkWell(
              onLongPress: (){
                print("On Long Press Happen");
              },
              splashColor: Colors.amber,
              hoverColor: Colors.red,
              radius: 24,
              child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text('Click Me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
/*class List_Widget extends StatelessWidget {
  List_Widget({super.key});
  List<String> studentNames = [
    'Sarah Johnson',
    'Michael Chen',
    'Emily Rodriguez',
    'Jason Patel',
    'Samantha Lee',
    'Kevin Nguyen',
    'Rachel Smith',
    'David Martinez',
    'Jessica Brown',
    'Andrew Wilson',
    'Lauren Garcia',
    'Christopher Kim',
    'Ashley Taylor',
    'Matthew Hernandez',
    'Jennifer Thompson',
  ];

  @override
  Widget build(BuildContext context) {
    List<Student>students=List.generate(studentNames.length, (index){
        return Student(name: studentNames[index],roll: index+1);
    });
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
            child: ListView(

              children: [
                /*
                Text('Student 1'),
                Text('Student 2'),
                Text('Student 3'),
                Text('Student 4'),
                Text('Student 5'),
                 */
                ListTile(
                  onTap: (){ },
                  leading: Icon(Icons.abc),
                  title: Text("Student1"),
                  subtitle: Text('Student Roll'),
                  style: ListTileStyle.drawer,

                ),
              ],
            ),
        ),
      ),
    );
  }
}*/
/*class Dynamic_List_Widget extends StatelessWidget {
  Dynamic_List_Widget({super.key});
  List<String> studentNames = [
    'Sarah Johnson',
    'Michael Chen',
    'Emily Rodriguez',
    'Jason Patel',
    'Samantha Lee',
    'Kevin Nguyen',
    'Rachel Smith',
    'David Martinez',
    'Jessica Brown',
    'Andrew Wilson',
    'Lauren Garcia',
    'Christopher Kim',
    'Ashley Taylor',
    'Matthew Hernandez',
    'Jennifer Thompson',
  ];

  @override
  Widget build(BuildContext context) {
    List<Student>students=List.generate(studentNames.length, (index){
      return Student(name: studentNames[index],roll: index+1);
    });

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context,index){
              return ListTile(
                onTap: (){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Student: ${students[index].name} & Roll: ${students[index].roll}'),
                    duration: const Duration(seconds: 1),

                  ));
                },
                leading: Icon(Icons.abc),
                title: Text("Student name: ${students[index].name}"),
                subtitle: Text('Student Roll: ${students[index].roll}'),
                style: ListTileStyle.drawer,
              );
            },
          )
        ),
      ),
    );
  }
}*/
/*class Grid_View_Widget extends StatelessWidget {
  Grid_View_Widget({super.key});
  List<String> studentNames = [
    'Sarah Johnson',
    'Michael Chen',
    'Emily Rodriguez',
    'Jason Patel',
    'Samantha',
    'Kevin Nguyen',
    'Rachel Smith',
    'David Martinez',
    'Jessica Brown',
    'Andrew Wilson',
    'Lauren Garcia',
    'Christopher Kim',
    'Ashley Taylor',
    'Matthew Hernandez',
    'Jennifer Thompson',
  ];

  @override
  Widget build(BuildContext context) {
    List<Student>students=List.generate(studentNames.length, (index){
      return Student(name: studentNames[index],roll: index+1);
    });

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SafeArea(
            child: GridView.builder(
              //scrollDirection: Axis.horizontal,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,mainAxisSpacing: 10),itemCount: studentNames.length, itemBuilder: (context,index){
                return Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.redAccent,
                  child: Center(
                    child:  Text(studentNames[index], style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                    )),
                  ),
                );
            }),
          ),
        ),
    );
  }
}*/


class ProductGrid extends StatelessWidget {
  ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.grey.withOpacity(0.8),
          appBar: AppBar(
              title: SafeArea(child: Text("Ecommerce")),
          ),
          body: SafeArea(
            child: Padding(
              padding: EdgeInsets.all(4.0),
              child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),itemCount: products.length, itemBuilder: (context,index){
                return Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                             padding: EdgeInsets.all(5),
                              child: Text("\$${products[index].price.toStringAsFixed(0)}",
                              style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                             //Image.network('src')


                          ),

                        ],
                      ),
                      Image.network('${products[index].image}',
                      fit: BoxFit.fitHeight,
                        height:70,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("${products[index].title}",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("${products[index].category}",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13,
                              fontStyle: FontStyle.italic),),

                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text("${products[index].description}",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(fontSize: 13,
                              fontStyle: FontStyle.normal),),

                      ),
                    ],
                  ),
                );
              }),
            )
          ),
        ),
    );
  }
}



class Student {
  String name;
  int roll;
  Student({required this.name, required this.roll});
}
