//Giải Bài 2 Quản Lý Tài Khoản Ngân Hàng

import 'dart:io';

class Bank_Account {
  String accountNumber;
  String ownerName;
  int balance;

  Bank_Account(this.accountNumber, this.ownerName, this.balance);

  void nhapThongTin() {
    print("Nhập Số Tài Khoản:");
    accountNumber = stdin.readLineSync()!;
    print("Nhập Tên Khách Hàng:");
    ownerName = stdin.readLineSync()!;
    print("Nhập Số Dư:");
    balance = int.parse(stdin.readLineSync()!);
  }

  void hienThiThongTin() {
    print("Số Tài Khoản: $accountNumber");
    print("Tên Khách Hàng: $ownerName");
    print("Số Dư: $balance");
  }

  void deposit([int tien = 0]) {
    balance += tien;
    print('Số Tiền Gửi: $tien');
    print('Số Dư Sau Khi Gửi: $balance');
  }

  void withDraw([int tien = 0]) {
    balance -= tien;
    print('Số Tiền Rút: $tien');
    print('Số Dư Sau Khi Rút: $balance');
  }
}

List<Bank_Account> danhSachKhachHang = [];
void themKhachHang() {
  var KhachHangMoi = Bank_Account('', '', 0);
  KhachHangMoi.nhapThongTin();
  danhSachKhachHang.add(KhachHangMoi);
  print("Đã thêm khách hàng thành công!");
}

void guiTien() {
  if (danhSachKhachHang.isEmpty) {
    print("Danh sách khách hàng trống.");
    return;
  }
  print("Nhập số tài khoản cần gửi:");
  var idCanGui = stdin.readLineSync();
  if (idCanGui == '' || idCanGui == null) {
    print("Tài khoản không chính xác");
    return;
  } else {
    print("Nhập số tiền cần gửi:");
    var tienCanGui = int.parse(stdin.readLineSync().toString());
    if (tienCanGui <= 0) {
      print("Số tiền gửi sai quy định");
      return;
    } else {
      for (var KhachHang in danhSachKhachHang) {
        if (KhachHang.accountNumber == idCanGui) {
          KhachHang.hienThiThongTin();
          KhachHang.deposit(tienCanGui);
          return;
        }
      }
    }
  }
}

void rutTien() {
  if (danhSachKhachHang.isEmpty) {
    print("Danh sách khách hàng trống.");
    return;
  }
  print("Nhập số tài khoản cần rút:");
  var idCanRut = stdin.readLineSync();
  if (idCanRut == '' || idCanRut == null) {
    print("Tài khoản không chính xác");
    return;
  } else {
    print("Nhập số tiền cần rút:");
    var tienCanRut = int.parse(stdin.readLineSync().toString());
    if (tienCanRut <= 0) {
      print("Số tiền rút sai quy định");
      return;
    } else {
      for (var KhachHang in danhSachKhachHang) {
        if (KhachHang.accountNumber == idCanRut) {
          KhachHang.hienThiThongTin();
          KhachHang.withDraw(tienCanRut);
          return;
        }
      }
    }
  }
}

void hienThiDanhSachKhachHang() {
  if (danhSachKhachHang.isEmpty) {
    print("Danh sách khách hàng trống.");
    return;
  }
  print("Danh sách khách hàng:");
  for (var KhachHang in danhSachKhachHang) {
    KhachHang.hienThiThongTin();
    print("---");
  }
}

void timKiemKhachHangTheoID() {
  if (danhSachKhachHang.isEmpty) {
    print("Danh sách khách hàng trống.");
    return;
  }
  print("Nhập số tài khoản cần tìm:");
  var idCanTim = stdin.readLineSync();
  for (var KhachHang in danhSachKhachHang) {
    if (KhachHang.accountNumber == idCanTim) {
      KhachHang.hienThiThongTin();
      return;
    }
  }
  print("Không tìm thấy khách hàng có ID: $idCanTim");
}

void main() {
  while (true) {
    print("\n--- CHƯƠNG TRÌNH QUẢN LÝ TÀI KHOẢN ---");
    print("1. Thêm tài khoản");
    print("2. Hiển thị danh sách tài khoản");
    print("3. Tìm kiếm tài khoản theo ID");
    print("4. Gửi tiền");
    print("5. Rút tiền");
    print("6. Tra số dư");
    print("7. Thoát");
    print("Chọn chức năng:");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        themKhachHang();
        break;
      case '2':
        hienThiDanhSachKhachHang();
        break;
      case '3':
        timKiemKhachHangTheoID();
        break;
      case '4':
        guiTien();
        break;
      case '5':
        rutTien();
        break;
      case '6':
        timKiemKhachHangTheoID();
        break;
      case '7':
        return;
      default:
        print("Lựa chọn không hợp lệ.");
    }
  }
}
