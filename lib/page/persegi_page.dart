import 'package:flutter/material.dart';
import 'package:flutterprojects/controller/persegi_controller.dart';
import 'package:get/get.dart';

class PersegiPage extends StatelessWidget {
   PersegiPage({Key? key}) : super(key: key);
  final PersegiController _persegiController=Get.put(PersegiController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persegi"),
      ),
      body: ListView(
        children: [
          Image.asset("assets/Persegi.png",
          ),
          Padding(padding: const EdgeInsets.all(8.0),
          child: Text("Persegi"),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: Text(
              "Persegi atau bujur sangkar adalah bangun datar dua dimensi yang dibentuk oleh empat buah rusuk.",
              style: TextStyle(color: Colors.white),
            ),
          ),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(color: Colors.green.shade300, borderRadius: BorderRadius.all(Radius.circular(8))
            ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  child: TextFormField(
                    onChanged: (String value){
                      _persegiController.sisi = int.parse(value);
                    },
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      labelText: "Sisi",
                      hintText: "Masukkan Sisi",
                      hintStyle: TextStyle(color: Colors.grey.shade400),
                      contentPadding: EdgeInsets.symmetric(vertical: 4, horizontal: 4),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.blue),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ),
             Row(
            children: [
              Expanded(
                child: Container(
                  child: ElevatedButton(
                    onPressed: (){
                      _persegiController.hitungLuas();
                    },child: Text("Hitung Luas"),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  child: ElevatedButton(
                    onPressed: (){
                      _persegiController.hitungKeliling();
                    },child: Text("Hitung Keliling"),
                  ),
                ),
              ),
            ],
          ),
              ],
            ),

          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              decoration: BoxDecoration(color: Colors.orange, borderRadius: BorderRadius.all(Radius.circular(8))),
              child: Obx(() => Text(_persegiController.hasil.value))),
        ],
      ),
    );
  }
}
