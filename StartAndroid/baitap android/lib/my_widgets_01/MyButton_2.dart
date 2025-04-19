import 'package:flutter/material.dart';

class MyButton_2 extends StatelessWidget {
  const MyButton_2({super.key});

  @override
  Widget build(BuildContext context) {
    // Tra ve Scaffold - widget cung cap bo cuc Material Design co ban

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        appBar: AppBar(
          title: Text('App số 2'), //Tiêu đề
          backgroundColor: Colors.cyanAccent, //Màu Nền
          //Do nang/ do bong cua appbar
          elevation: 4,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Elevated Button
              ElevatedButton(
                onPressed: () {
                  // Handle button press here
                  print("Elevated Button Pressed");
                },
                child: Text("ElevatedButton", style: TextStyle(fontSize: 24)),
                style: ElevatedButton.styleFrom(
                  // màu nền
                  backgroundColor: Colors.green,
                  // màu của các nội dung bên trong
                  foregroundColor: Colors.white,
                  // dạng hình
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5), // RoundedRectangleBorder
                  ),
                  // padding
                  padding: EdgeInsets.symmetric(
                    horizontal: 20, //chiều ngang
                    vertical: 15  ,// chiều dọc
                  ), // EdgeInsets.symmetric
                  // elevate
                  elevation: 15,

                ), // ElevatedButton.styleFrom
              ),

              // Text Button
              TextButton(
                onPressed: () {
                  // Handle button press here
                  print("Text Button Pressed");
                },
                child: const Text("Text Button", style: TextStyle(fontSize: 24)),
                style:  TextButton.styleFrom(
                  //màu nền
                  backgroundColor: Colors.tealAccent,
                  // màu của các nội dung bên trong
                  foregroundColor: Colors.black,
                  // dạng hình
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100), // RoundedRectangleBorder
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 15, //chiều ngang
                    vertical: 15  ,// chiều dọc
                  ), // EdgeInsets.symmetric
                  // elevate
                  elevation: 5,


                ),


              ),

              const SizedBox(height: 20),
              //OutlineButton
              OutlinedButton(
                onPressed: () {
                  print("Outline Button Pressed");
                },
                child: const Text("Outline Button"),
              ),

              IconButton(
                onPressed: () {
                  print("Icon Button Pressed");
                  // Thực hiện hành động khi nút được nhấn
                },
                icon: const Icon(Icons.favorite),
              ),

              const SizedBox(height: 20),
              FloatingActionButton(onPressed: () {
                print("Floating Action Button Pressed");
              },
                child: const Icon(Icons.add),
              ),
              // InkWell
              // InkWell không phải là button,
              // nhưng nó cho phép tạo hiệu ứng gợn sóng (ripple effect)
              // khi nhấn vào bất kỳ widget nào.
              InkWell(
                  onTap: () {
                    print("InkWell được nhấn!");
                  },
                  child: Container(

                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.tealAccent),
                    ), // BoxDecoration
                    child: Text("Button tùy chỉnh với InkWell")

                    // màu của các nội dung bên trong
                  ) // Container
              ) // InkWell
            ],

          ),
        ),



        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print("Pressed");
          },
          child: Icon(Icons.add),
        ),

        //Text button là 1 button phẳng

        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang Chủ"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm Kiếm"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá Nhân"),
          ],
        ),
      ),
    );
  }
}