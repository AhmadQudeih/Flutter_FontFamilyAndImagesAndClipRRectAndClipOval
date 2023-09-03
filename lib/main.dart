import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'facebook',
          style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.more_horiz,
            color: Colors.blue,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.message,
              color: Colors.blue,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: Colors.blue,
            ),
          ),
        ],
        elevation: 10,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'ahmad',
                style: TextStyle(
                  fontSize: 44,
                  fontFamily: "myfont",  // ---------->> تغيير نوع الخط
                  fontWeight: FontWeight.w600,
                ),
              ),
              ClipRRect( // -------->> اضافة انحنار الى الزوايا
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                child: Image.asset("assets/img/image1.jpeg",
                    fit: BoxFit.cover, height: 200, width: 222),
              ),
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                child: Image.network(
                  "https://th.bing.com/th/id/OIP.HKADtOXN2thLHouCqmvbNwHaFX?pid=ImgDet&rs=1",
                  fit: BoxFit.cover,
                  height: 200,
                  width: 222,
                ),
              ),
              CircleAvatar(  // -------> وضع الصورة في شكل دائري
                backgroundImage: AssetImage(
                    "assets/img/image1.jpeg"), 
              ),
              CircleAvatar(  
                child: ClipOval(  // -------> وضع الصورة في شكل بيضاوي
                  child: Image.asset("assets/img/image1.jpeg"),
                ),
                radius: 120, 
              ),
            ],
          ),
        ),
      ),
    ),
  ));
}
