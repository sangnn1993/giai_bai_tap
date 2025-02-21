// Bài 1: Quản lý thông tin sinh viên
//  Yêu cầu:
//  Tạo lớp Student với các thuộc tính: id, name, age, grade. 1.
//  Viết các phương thức: 2.
//  Nhập thông tin sinh viên.
//  Hiển thị thông tin sinh viên.
//  Viết chương trình quản lý danh sách sinh viên: thêm mới, hiển thị danh
//  sách, và tìm kiếm sinh viên theo ID
//  Solve:
import 'dart:io';

class Student{
  String id;
  String name;
  int age;
  String grade;

  Student(this.id,this.name,this.age,this.grade);
  void nhapThongTin() {
    print("Nhập ID sinh viên:");
    id = stdin.readLineSync()!;
    print("Nhập tên sinh viên:");
    name = stdin.readLineSync()!;
    print("Nhập tuổi sinh viên:");
    age = int.parse(stdin.readLineSync()!);
    print("Nhập lớp của sinh viên:");
    grade = stdin.readLineSync()!;
  }
  void hienThiThongTin() {
    print("ID: $id");
    print("Tên: $name");
    print("Tuổi: $age");
    print("Lớp: $grade");
  }
}


List<Student> danhSachSinhVien = [];
void themSinhVien() {
  var sinhVienMoi = Student('', '', 0, '');
  sinhVienMoi.nhapThongTin();
  danhSachSinhVien.add(sinhVienMoi);
  print("Đã thêm sinh viên thành công!");
}

void hienThiDanhSachSinhVien() {
  if (danhSachSinhVien.isEmpty) {
    print("Danh sách sinh viên trống.");
    return;
  }
  print("Danh sách sinh viên:");
  for (var sinhVien in danhSachSinhVien) {
    sinhVien.hienThiThongTin();
    print("---");
  }
}

void timKiemSinhVienTheoID() {
  if (danhSachSinhVien.isEmpty) {
    print("Danh sách sinh viên trống.");
    return;
  }
  print("Nhập ID sinh viên cần tìm:");
  var idCanTim = stdin.readLineSync();
  for (var sinhVien in danhSachSinhVien) {
    if (sinhVien.id == idCanTim) {
      sinhVien.hienThiThongTin();
      return;
    }
  }
  print("Không tìm thấy sinh viên có ID: $idCanTim");
}

void main() {
  while (true) {
    print("\n--- CHƯƠNG TRÌNH QUẢN LÝ SINH VIÊN ---");
    print("1. Thêm sinh viên");
    print("2. Hiển thị danh sách sinh viên");
    print("3. Tìm kiếm sinh viên theo ID");
    print("4. Thoát");
    print("Chọn chức năng:");
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        themSinhVien();
        break;
      case '2':
        hienThiDanhSachSinhVien();
        break;
      case '3':
        timKiemSinhVienTheoID();
        break;
      case '4':
        return;
      default:
        print("Lựa chọn không hợp lệ.");
    }
  }
}