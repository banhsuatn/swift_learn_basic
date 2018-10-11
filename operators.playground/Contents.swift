//
//
//Renge Operators
//

//closed range operators
//(a...b) định nghĩ 1 tập từ a đến b tính cả a và b. a < b
//sử dụng trong vòng lập for-in
for index in 1...5 {
    print(index)  //chạy 5 lần
}

//Haft-Openn range Operator
let gioiHan = 5
for i in 1..<gioiHan {
    print(i) // chạy từ 1 - 4
}
//One-Sided Ranges
//for name in names[2...] {
//    print(name)
//}
//for name in names[...2] {
//    print(name)
//}
