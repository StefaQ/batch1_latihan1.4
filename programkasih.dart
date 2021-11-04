import 'dart:io';

void main(List<String> args) {
  int nomor, qty, subtotal = 0, grandtotal = 0, harga = 0;
  String menu, ulang = 'Y';

  stdout.write("Masukkan kode user: ");
  String? kodeuser = stdin.readLineSync()!;
  stdout.write("Password: ");
  String? passuser = stdin.readLineSync()!;
  if (kodeuser == 'FTIUWDP' && passuser == 'TPBO5AB') {
    print('Kode User dan Password Valid!');
  } else {
    print('Login Invalid!');
    exit(0);
  }

  print('''
  HOCIAK MENU
  -------------------
  [A] TAU SUAN ORIGINAL
  [B] TAU SUAN MIX
  [C] CE HUN TIAU REGULER
  [D] CE HUN TIAU MIX
  [E] BUBUR KETAN HITAM
  [F] ES KACANG MERAH
  [G] BONGKO
  [H] SUSU KACANG
  ''');

  do {
    stdout.write("Meja No. : ");
    String? noMeja = stdin.readLineSync()!;
    nomor = int.parse(noMeja);
  } while (nomor > 10 || nomor < 0);

  while (ulang == 'Y') {
    do {
      stdout.write("Pilihan Menu: ");
      menu = stdin.readLineSync()!;
      menu = menu.toUpperCase();
    } while (menu != 'A' &&
        menu != 'B' &&
        menu != 'C' &&
        menu != 'D' &&
        menu != 'E' &&
        menu != 'F' &&
        menu != 'G' &&
        menu != 'H');

    if (menu == 'A') {
      print('Nama Menu: TAU SUAN ORIGINAL');
      harga = 18000;
      print('Harga: $harga');
    } else if (menu == 'B') {
      print('Nama Menu: TAU SUAN MIX');
      harga = 22000;
      print('Harga: $harga');
    } else if (menu == 'C') {
      print('Nama Menu: CE HUN TIAU REGULER');
      harga = 18000;
      print('Harga: $harga');
    } else if (menu == 'D') {
      print('Nama Menu: CE HUN TIAU MIX');
      harga = 22000;
      print('Harga: $harga');
    } else if (menu == 'E') {
      print('Nama Menu: BUBUR KETAN HITAM');
      harga = 18000;
      print('Harga: $harga');
    } else if (menu == 'F') {
      print('Nama Menu: ES KACANG MERAH');
      harga = 18000;
      print('Harga: $harga');
    } else if (menu == 'G') {
      print('Nama Menu: BONGKO');
      harga = 18000;
      print('Harga: $harga');
    } else if (menu == 'H') {
      print('Nama Menu: SUSU KACANG');
      harga = 9000;
      print('Harga: $harga');
    }

    do {
      stdout.write('Porsi: ');
      String? porsi = stdin.readLineSync()!;
      qty = int.parse(porsi);
    } while (qty < 1);

    subtotal = harga * qty;
    print('Subtotal : $subtotal');

    ulang = '';
    do {
      stdout.write('Apakah ingin menginput menu lagi?');
      ulang = stdin.readLineSync()!;
      ulang = ulang.toUpperCase();
    } while (ulang != 'Y' && ulang != 'T');

    if (ulang == 'Y') {
      grandtotal = grandtotal + subtotal;
    } else if (ulang == 'T') {
      grandtotal = grandtotal + subtotal;
      print('Grandtotal : $grandtotal');
    }
  }
  print('Thank you~');
}
