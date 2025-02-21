import 'dart:io';
// Bài 1:Bài tập quản lý sinh viên
//Solve:
/*
void main(List<String> args) {
  print("Nhập Họ tên Sinh Viên:");
  var ten = stdin.readLineSync().toString()!;
  print("Nhập Số Giờ Làm Việc:");
  var hours = int.parse(stdin.readLineSync().toString()!);
  print("Nhập Lương Mỗi Giờ:");
  var income = double.parse(stdin.readLineSync().toString()!);

  // Tính Tổng Lương
  var total_income = hours * income;
  print('Tổng lương của $ten là $total_income vnd');
  //Thêm phụ cấp: Nếu làm hơn 40 giờ, nhân viên nhận thêm 20% tổng lương.
  var increase = 0.0;
  if (total_income > 40){
    increase = 0.2;
    }
  var gross_profit = total_income*(1+increase);
  print('Vì tổng giờ làm hơn 40h, nên tổng lương sẽ tăng 20% tương ứng với tổng tiền là: $gross_profit');
  // Trừ thuế thu nhập:
  // ○ Lương trên 10 triệu: trừ 10%.
  // ○ Lương từ 7 đến 10 triệu: trừ 5%.
  // ○ Lương dưới 7 triệu: không trừ.
  var tax_rate = 0.0;
  switch (gross_profit) {
    case var value when value > 10000000:
    tax_rate = 0.1;
    break;
    case var value when value >= 7000000:
    tax_rate = 0.05;
    break;
    default:
    tax_rate = 0;
    break;
  }
  var net_profit = gross_profit*(1-tax_rate);
  print('Thu nhập sau thuế của $ten là $net_profit vnd');
  print('----------------------------------------');
  print({'Họ Tên':ten,'Lương trước thuế':total_income,'Thuế thu nhập':'${tax_rate*100}%','Lương thực lãnh':net_profit});
}*/

// Bài 2: Quản Lý Bán Hàng
void main(List<String> args) {
  print("Nhập Tên Sản Phẩm:");
  var ten = stdin.readLineSync().toString()!;
  print("Nhập Số Lượng Mua:");
  var num = int.parse(stdin.readLineSync().toString()!);
  print("Nhập Đơn Giá:");
  var unit_price = double.parse(stdin.readLineSync().toString()!);

  // Tính Tổng Tiền
  var total = num * unit_price;
  // Áp dụng giảm giá:
  // ○ Nếu thành tiền >= 1,000,000, giảm giá 10%.
  // ○ Nếu thành tiền từ 500,000 đến dưới 1,000,000, giảm giá 5%.
  // ○ Nếu dưới 500,000, không giảm giá.
  double discount;
  switch (total) {
    case var value when value >= 1000000:
    discount = 0.1;
    break;
    case var value when value >= 500000:
    discount = 0.05;
    break;
    default:
    discount = 0;
    break;
  }
  var total_2 = total*(1-discount);
  var vat = total_2*0.08;
  print('----------------------------------------');
  print('      ***** Hoá Đơn Bán Hàn *****       ');
  print('----------------------------------------');
  print('- ${ten+(' '*(40-ten.length - num.toString().length - 4))}x $num');
  print('- ${unit_price.toString()+(' '*(40 - unit_price.toString().length - 6))} vnd');
  print('- $total                             vnd');
  print('- Giảm ${total*discount}             vnd');
  print('- VAT: $vat                          vnd');
  print('- Tổng thanh toán: ${total_2+vat}    vnd');
}