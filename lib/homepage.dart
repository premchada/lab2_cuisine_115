import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cuisine App'),
      ),
      body: ListView(
        children: [
          imgcover(),
          titleSelection(),
          profilepic(),
          SizedBox(height: 8),
          name(),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                color: Colors.orange[100],
                
                padding: EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.stopwatch,
                          color: Colors.blue[400],
                        ),
                        Text('เวลาเตรียม',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('10 นาที')
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.utensils,
                          color: Colors.orange,
                        ),
                        Text('เวลาปรุง',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('50 นาที  ')
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.gripfire,
                          color: Colors.red,
                        ),
                        Text('แคลอรี่',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('300 Kcal/เสิร์ฟ   ')
                      ],
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      children: [
                        Icon(
                          FontAwesomeIcons.user,
                          color: Colors.green,
                        ),
                        Text('สำหรับ',
                            style: GoogleFonts.kanit(
                                fontSize: 16, fontWeight: FontWeight.bold)),
                        Text('5 เสิร์ฟ ')
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          intro(),
          SizedBox(
            height: 20,
          ),
          imgmaterial(),
          material(),
          SizedBox(
            height: 20,
          ),
          cook(),
          SizedBox(
            height: 20,
          ),
          Image.asset('images/lobster_final.jpg'),
          Container(
            padding: EdgeInsets.all(15),
            child: Text(
              'ทำง่ายใช่ไหมคะ กับเมนู “ล็อบสเตอร์อบชีส” ที่รสชาติเข้มข้นไม่แพ้ร้านเลย โดยเราไม่ต้องเป็นมือโปรในการเตรียมล็อบสเตอร์ก็สามารถทำเมนูนี้ได้ที่บ้าน',
              style: TextStyle(fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  Image imgcover() {
    return Image.asset('images/lobster_cover.jpg');
  }

  Column titleSelection() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'วิธีทำ “ล็อบสเตอร์อบชีส” เมนูอาหารฝรั่งทำง่ายแบบไม่ง้อร้าน! ',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'เนื้อล็อบสเตอร์เด้ง ๆ โปะซอสเข้มข้นและชีสเน้น ๆ กับเมนู “ล็อบสเตอร์อบชีส” ที่มาพร้อมวิธีทำที่ทำตามได้ไม่ยาก พร้อมแล้วตามมาเข้าครัวกันเลย! ',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }

  Widget profilepic() {
    return CircleAvatar(
      radius: 50,
      backgroundImage: NetworkImage(
          'https://scontent.xx.fbcdn.net/v/t1.15752-9/268362678_466028498577429_5396645204492733989_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=aee45a&_nc_eui2=AeFl18Bd26XU481-tvzkSIKXk7pfwj-AiMiTul_CP4CIyNhv-JHOwlMGSxBe702zC22T0nz7g0OPDb0iTlLxAcRi&_nc_ohc=kzU1vR4W9g4AX_B2Ies&_nc_ad=z-m&_nc_cid=0&_nc_ht=scontent.xx&oh=03_AVInZmjzmB-6TJYgBIodiNBxe4x3XgCz7YOKu9jM4KUT7g&oe=61F0CA02'),
    );
  }

  Row name() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('26 ธ.ค. 2564'),
        Text('โดยเชฟ ปีหนึ่ง'),
      ],
    );
  }

  intro() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(
        'ใครว่าทำเมนูล็อบสเตอร์นั้นไม่สามารถทำได้ที่บ้าน จิ๋วหิวโซคนนี้ขอคาน! เพราะวันนี้จะมาชวนเพื่อน ๆ เข้าครัวทำเมนู “ล็อบสเตอร์อบชีส” ที่บ้านกันแบบง่าย ๆ และไม่ต้องเตรียมล็อบสเตอร์ให้วุ่นวาย ส่วนซอสก็สามารถทำได้ไม่ยาก งานนี้รับรองว่าเด็ดไม่แพ้ร้านเลยล่ะจ้า ',
        style: TextStyle(fontSize: 16),
      ),
    );
  }

  Image imgmaterial() {
    return Image.asset('images/lobster_material.jpg');
  }

  material() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'วัตถุดิบ',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Text('1.	แคนนาเดียนล็อบสเตอร์ดิบส่วนหาง ตรา Qfresh 5 ตัว'),
          Text('2.	หอมแขกหั่นเต๋า 1/2 ลูก '),
          Text('3.	เนยสด 100 กรัม '),
          Text('4.	แป้งอเนกประสงค์ 2 ช้อนโต๊ะ '),
          Text('5.	คุกกิ้งครีม 1 ถ้วยตวง '),
          Text('6.	น้ำมันมะกอก 1 ช้อนโต๊ะ '),
          Text('7.	ไวน์ขาว 3 ช้อนโต๊ะ'),
          Text('8.	พาร์สลีย์อบแห้ง 1/2 ช้อนโต๊ะ '),
          Text('9.	เกลือ 1/4 ช้อนชา '),
          Text('10.	พริกไทย 1/4 ช้อนชา '),
          Text('11.	ชีสพาร์เมซานขูด ตามต้องการ '),
          Text('12.	สลัดผัก สำหรับเสิร์ฟคู่ '),
        ],
      ),
    );
  }

  Widget cook() {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Text('ลงมือโล้ดดดดดดดด! ',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 10,
          ),
          Text('STEP 1 : เตรียมล็อบสเตอร์ ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(
              '•	นำ แคนนาเดียนล็อบสเตอร์ดิบส่วนหาง ตรา Qfresh วางให้ละลายที่อุณหภูมิห้องหรือแช่ในน้ำเย็น แล้วนำมาตัดเปลือกส่วนท้องออกตามวิดีโอ และนำล็อบสเตอร์เรียงลงบนถาดอบให้ครบทั้ง 5 ตัว แล้วพักไว้เตรียมใส่ซอส'),
          Text('STEP 2 : ทำซอส + อบ ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(
              '•	ตั้งกระทะบนเตาโดยใช้ไฟกลาง ใส่น้ำมันมะกอกลงไปในกระทะ เมื่อน้ำมันร้อนให้ใส่หอมแขกหั่นเต๋าลงไปผัดจนเปลี่ยนเป็นสีน้ำตาลอ่อน ๆ แล้วใส่ไวน์ขาวลงไปผัดให้มีกลิ่นหอม'),
          Text(
              '•	ใส่เนยลงไปในกระทะแล้วใช้ตะหลิวคนให้เนยละลาย จากนั้นใส่แป้งอเนกประสงค์ลงไปผัดให้เข้ากันกับเนย แล้วใส่คุกกิ้งครีมลงคนให้เข้ากัน ปรุงรสด้วยเกลือ พริกไทย พาร์สลีย์อบแห้งลงไปคนให้เข้ากัน เมื่อครีมเริ่มเซตตัวข้นขึ้นแล้วยกลงจากเตาได้เลย'),
          Text(
              '•	นำล็อบสเตอร์ที่เตรียมไว้ (STEP 1) นำมาใส่ซอสลงไปให้ทั่ว ๆ จากนั้นขูดชีสพาร์เมซานลงไป นำเข้าอบด้วยไฟบนล่าง อุณหภูมิ 200 องศาเซลเซียล เป็นเวลา 25 นาที '),
          Text('STEP 3 : จัดเสิร์ฟ  ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(
              '•	เมื่ออบครบเวลาเรียบร้อยแล้ว นำล็อบสเตอร์มาจัดลงบนจานเสิร์ฟคู่กับสลัดผัก เท่านี้เราก็ได้เมนู “ล็อบสเตอร์อบชีส” ร้อน ๆ กินกันที่บ้านแล้วล่ะจ้า '),
              Text('ที่มา: https://www.wongnai.com/recipes/baked-lobster-with-cheese')
        ],
      ),
    );
  }
}
