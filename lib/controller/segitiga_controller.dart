import 'package:get/get.dart';

class SegitigaController extends GetxController{
  int alas = 0;
  int tinggi = 0;
  final hasil ="".obs;

  void hitungLuas(){
    num hitung = 0.5 * (alas * tinggi);
    hasil.value = "Hasil Perhitungan Luas adalah $hitung";
  }
  void hitungKeliling(){
    int hitung = 3 * alas;
    hasil.value = "Hasil Perhitungan Keliling adalah $hitung";
  }
}