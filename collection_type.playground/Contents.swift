//gồm 3 loại: array - set - dictionary

//Array
//
//Khai báo - khởi tạo:
//

var someInts = [Int]() //khởi tạo mảng rỗng
//khởi tạo với giá trị default
var someString:[String] = Array(repeating: "rong", count: 5) // khởi tạo mảng 5 phần tử với giá trị mặc định "rong"
//Array literal
var someNames: [String] = ["viet","thanh","trinh"]

someInts.append(1) // thêm giá trị vào vị trí cuối cùng
someInts.count //trả về số lượng phần tử trong mảng
someInts.contains(1) //kiểm tra xem có phần tử 1 trong mảng ko
someInts.sorted() //sắp xếp

//iterating over an array -  duyệt mảng
for name in someNames {
    print(name)
}
// enumerated
for (index, value) in someNames.enumerated() { //trả về index và giá trị
    print("Item \(index + 1): \(value)")
}
//Set
//
//Mô tả
//
//Set giống như mảng: có khả năng lưu trữ
//Khác: ko quan tâm đế thứ tự sắp xếp các phần tử - các phần tử ko đc trùng nhau
//Thực thi nhanh hơn mảng

//Khai báo -  khởi tạo:
var id = Set<Int>()
id.insert(0)
id.insert(1)
//Array literal
var index: Set<Int> = [1,2,3]
// truy xuất và duyệt mảng giống như array

//Xử lý tập hơp cơ bản
id.intersection(index) //trả về tập các phần tử trùng là: 1
id.symmetricDifference(index) //trả về tập các phần tử ko trùng là : 0,2,3
id.union(index) //gộp 2 tập hợp: 0,1,2,3
id.subtracting(index) //trả về phần của a ko chứa trong b: 0

//Dictionary
//
//Khai báo và khởi tạo:
//
var nameOfIntegers = [Int:String]()
nameOfIntegers[1] = "one"
nameOfIntegers[2] = "two"
nameOfIntegers[3] = "three"
//dictionary literal
var fullname: [String:String] = ["fisrt name":"vh","last name":"viet"]
//Accessing and Modifying
print(fullname["fisrt name"]) // vh
fullname["last name"] = "thanh" //chỉnh sửa
//iterating over -  duyệt phần tử
for (key, value) in fullname {
    print(key + " " + value)
}
for key in fullname.keys {
    print(key) //fisrt name, last name
}

//let airportCodes = [String](airports.keys)
//// airportCodes is ["YYZ", "LHR"]
//
//let airportNames = [String](airports.values)
//// airportNames is ["Toronto Pearson", "London Heathrow"]










